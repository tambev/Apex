public with sharing class AccountDisc {
    public static void updatediscription(List<Author__c> authors){
        String userFirstName = UserInfo.getFirstName();
        for (Author__c author : authors) {
            author.Description__c = userFirstName;
        }
    
    }
    public static void preventDeletion(List<Author__c> authors) {
        for (Author__c author : authors) {
            author.addError('Deletion of Author records is not allowed.');
        }
    }
}