
package org.ariahgroup.research.proposaldevelopment.notification;

import java.util.Set;
import org.kuali.kra.common.notification.service.KcNotificationService;
import org.kuali.kra.proposaldevelopment.notification.ProposalDevelopmentNotificationContext;
import org.kuali.rice.ken.api.notification.NotificationRecipient;

/**
 *
 * @author
 */
public interface ChangedDataNotificationService extends KcNotificationService{
    
    Set<NotificationRecipient.Builder> getProposalChangedDataRecipients(ProposalDevelopmentNotificationContext context);
    
    void addRecipientIfNotLoggedOn(Set<NotificationRecipient.Builder> recipients, final String principalName);
    
    NotificationRecipient.Builder createRecipient(final String principalName);
}
