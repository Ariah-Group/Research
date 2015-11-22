/*

 */
package org.ariahgroup.research.proposaldevelopment.notification;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang.StringUtils;
import org.ariahgroup.research.service.UnitService;
import org.kuali.kra.award.contacts.AwardUnitContact;
import org.kuali.kra.bo.Unit;
import org.kuali.kra.bo.UnitAdministrator;
import org.kuali.kra.common.notification.NotificationContext;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.DevelopmentProposal;
import org.kuali.kra.proposaldevelopment.notification.ProposalDevelopmentNotificationContext;
import org.kuali.rice.ken.api.notification.NotificationRecipient;
import org.kuali.rice.ken.bo.NotificationRecipientBo;
import org.kuali.rice.kim.api.KimConstants;
import org.kuali.rice.krad.util.GlobalVariables;

/**
 *
 * @author Ariah Group
 */
public class ChangedDataNotificationServiceImpl extends org.kuali.kra.common.notification.service.impl.KcNotificationServiceImpl
        implements ChangedDataNotificationService {

    private UnitService unitSvc;

    @Override
    public Set<NotificationRecipient.Builder> getNotificationRecipients(NotificationContext context) {
        if (context instanceof ProposalDevelopmentNotificationContext) {
            // add proposal coord/OSP admin to any recipients configured on the UI using roles
            Set<NotificationRecipient.Builder> recipients = super.getNotificationRecipients(context);
            recipients.addAll(getProposalChangedDataRecipients((ProposalDevelopmentNotificationContext) context));
            return recipients;
        } else {
            return super.getNotificationRecipients(context);
        }
    }

    /**
     * add recipients from the proposal - the proposal coordinator if existing,
     * or the OSP admin for the proposal's owning unit
     * <p>
     * uses principal name for the recipient id</p>
     *
     * @param context - the notification context
     * @return the recipients if found, if action code matches, and if not
     * logged on, otherwise empty set
     *
     */
    @Override
    public Set<NotificationRecipient.Builder> getProposalChangedDataRecipients(ProposalDevelopmentNotificationContext context) {
        Set<NotificationRecipient.Builder> recipients = new HashSet<NotificationRecipient.Builder>();
        if (context.getActionTypeCode().equals("104")) {
            DevelopmentProposal proposal = (DevelopmentProposal) context.getProposal();

            if (StringUtils.isEmpty(proposal.getProposalCoordinatorPrincipalName())) {
                ArrayList<Unit> units = new ArrayList<Unit>();
                units.add(context.getProposal().getOwnedByUnit());

                ArrayList<String> adminTypes = new ArrayList<String>();
                adminTypes.add(AwardUnitContact.OSP_ADMINISTRATOR);

                List<UnitAdministrator> results = getUnitService().retrieveUnitAdminsByAdminTypes(adminTypes, units);

                for (UnitAdministrator admin : results) {
                    addRecipientIfNotLoggedOn(recipients, admin.getPerson().getUserName());
                }
            } else {
                if (proposal.getProposalCoordinator() != null) {
                    addRecipientIfNotLoggedOn(recipients, proposal.getProposalCoordinator().getUserName());
                }
            }
        }

        return recipients;
    }

    /**
     * add recipient if not logged on
     *
     * @param recipients - the set of recipients
     * @param principalName - the principal id
     */
    @Override
    public void addRecipientIfNotLoggedOn(Set<NotificationRecipient.Builder> recipients, final String principalName) {
        if (!principalName.equals(GlobalVariables.getUserSession().getPrincipalName())) {
            NotificationRecipient.Builder builder = createRecipient(principalName);
            recipients.add(builder);
        }
    }

    /**
     * create a notification recipient for the principal/person id
     *
     * @param principalName - the principal id
     * @return the builder
     */
    @Override
    public NotificationRecipient.Builder createRecipient(final String principalName) {
        NotificationRecipientBo recipient = new NotificationRecipientBo();
        recipient.setRecipientId(principalName);
        recipient.setRecipientType(KimConstants.KimGroupMemberTypes.PRINCIPAL_MEMBER_TYPE.getCode());
        NotificationRecipient.Builder builder = NotificationRecipient.Builder.create(recipient);
        return builder;
    }

    /**
     * @return the unitSvc from {@link KraServiceLocator} or a mock
     */
    public UnitService getUnitService() {
        if (unitSvc == null) {
            unitSvc = KraServiceLocator.getService(UnitService.class);
        }
        return unitSvc;
    }

    /**
     * @param unitSvc the unitSvc to set
     */
    public void setUnitService(UnitService unitSvc) {
        this.unitSvc = unitSvc;
    }
}
