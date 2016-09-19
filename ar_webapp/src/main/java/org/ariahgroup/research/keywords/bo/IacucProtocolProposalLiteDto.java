/*

 */
package org.ariahgroup.research.keywords.bo;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class IacucProtocolProposalLiteDto {
    
    private String protocolNumber;
    private String documentNumber;
    private String title;

    /**
     * @return the documentNumber
     */
    public String getDocumentNumber() {
        return documentNumber;
    }

    /**
     * @param documentNumber the documentNumber to set
     */
    public void setDocumentNumber(String documentNumber) {
        this.documentNumber = documentNumber;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the protocolNumber
     */
    public String getProtocolNumber() {
        return protocolNumber;
    }

    /**
     * @param protocolNumber the protocolNumber to set
     */
    public void setProtocolNumber(String protocolNumber) {
        this.protocolNumber = protocolNumber;
    }
}
