/*

 */
package org.ariahgroup.research.keywords.bo;

/**
 *
 * @author The Ariah Group, Inc.
 */
public class InstProposalLiteDto {
    
    private String proposalNumber;
    private String documentNumber;
    private String title;

    /**
     * @return the proposalNumber
     */
    public String getProposalNumber() {
        return proposalNumber;
    }

    /**
     * @param proposalNumber the proposalNumber to set
     */
    public void setProposalNumber(String proposalNumber) {
        this.proposalNumber = proposalNumber;
    }

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
}
