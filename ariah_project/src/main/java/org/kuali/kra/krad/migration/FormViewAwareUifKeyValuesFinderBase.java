package org.kuali.kra.krad.migration;

import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.kns.util.KNSGlobalVariables;
import org.kuali.rice.kns.web.struts.form.KualiDocumentFormBase;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;
import org.kuali.rice.krad.uif.view.ViewModel;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.web.form.DocumentFormBase;
import org.kuali.rice.krad.web.form.UifFormBase;

import java.util.List;

/**
 * This base values finder class serves as a compatible layer to be used during the kns to krad conversion.
 * Once the conversion is complete this class should be removed.  The main purpose of this class is to make
 * Forms or Views available to the values finders in a way that is consistent with the kns & krad.
 */
public class FormViewAwareUifKeyValuesFinderBase extends UifKeyValuesFinderBase {

    private static final String VIEW_MODEL_FORM_KEY = "KC_VF_VIEW_MODEL_FORM_KEY";

    @Override
    public List<KeyValue> getKeyValues(ViewModel model) {
        try {
            storeViewModelFormKey(model);
            return super.getKeyValues(model);
        } finally {
            removeViewModelFormKey(model);
        }
    }

    /**
     * This method will first look for the struts form in global memory.  If found, it will return that form.  If
     * not found it will look for the krad view in global memory.  If found, it will return that otherwise it will
     * return null.
     *
     * @return A kns form, a krad view, or null
     */
    protected Object getFormOrView() {
        Object formOrView = KNSGlobalVariables.getKualiForm();
        if (formOrView == null) {
            final String key = (String) GlobalVariables.getUserSession().retrieveObject(VIEW_MODEL_FORM_KEY);
            if (key != null) {
                formOrView = GlobalVariables.getUifFormManager().getSessionForm(key);
            }
        }
        return formOrView;
    }

    /**
     * Retrieves the Document from the Form or View if the Form is a Document based Form.
     * @return The Document or null
     */
    protected Document getDocument() {
        final Object formOrView = getFormOrView();
        if (formOrView instanceof KualiDocumentFormBase) {
            return ((KualiDocumentFormBase) formOrView).getDocument();
        } else if (formOrView instanceof DocumentFormBase) {
            return ((DocumentFormBase) formOrView).getDocument();
        }
        return null;
    }

    /**
     * Stores the form key in user session.  Only supports ViewModels that are some subclass of UifFormBase
     * @param model the viewModel or null
     */
    private void storeViewModelFormKey(ViewModel model) {
        if (model instanceof UifFormBase) {
            GlobalVariables.getUserSession().addObject(VIEW_MODEL_FORM_KEY, ((UifFormBase) model).getFormKey());
        }
    }

    /**
     * Removes the form key in user session.  Only supports ViewModels that are some subclass of UifFormBase
     * @param model the viewModel or null
     */
    private void removeViewModelFormKey(ViewModel model) {
        if (model instanceof UifFormBase) {
            GlobalVariables.getUserSession().removeObject(VIEW_MODEL_FORM_KEY);
        }
    }
}
