public with sharing class AccountProcessor {
    @future 
    public static void countContacts(List<Id>accid){
    
      List<Account> accList=[select Id, Name,Number_Of_Contacts__c,(select  Id from Contacts)from Account where Id IN: accid];
      for(Account acc: accList){
      
        acc.Number_Of_Contacts__c=acc.Contacts.Size();
  
      }
      if(!accList.isEmpty()){
        Update accList;
      }
          }
    }