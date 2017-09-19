global class OpportunityWebService{
    webService static String createOpportunity(String oppName, String accId,Date closedDate, String stageName) {
        Opportunity objOpportunity = new Opportunity();
        objOpportunity.Name = oppName;
        objOpportunity.AccountId = accId;
        objOpportunity.CloseDate = closedDate;
        objOpportunity.stageName = stageName;
        insert objOpportunity;
        return objOpportunity.Id;
    }
}