public with sharing class OpportunityController {
    @AuraEnabled
    public static List<Contact> getOpportunities() {
        List<Contact> opportunities = [SELECT Id, Name, Email FROM Contact];
        System.debug('opportunities>>'+opportunities);
        return opportunities;
    }
}