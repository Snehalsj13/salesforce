public with sharing class fetchContacts {
	@AuraEnabled
    public static List<Contact> getContacts(){
        List<Contact> listOfAllContacts = [SELECT Id, Name, Email FROM Contact LIMIT 20];
        System.debug('listOfAllContacts>>>'+listOfAllContacts );
        return listOfAllContacts;
    }
}