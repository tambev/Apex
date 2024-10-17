public with sharing class AccountBasedOrigin {
  @future
  public static  void countcontact(List<Id> accid) {
    List<Account> accList=[select Id, Name,Count_No_Of_contact__c,(select  Id from Contacts)from Account where Id IN: accid];
    for(Account acc: accList){
    
      acc.Count_No_Of_contact__c=acc.Contacts.Size();

    }
    if(!accList.isEmpty()){
      Update accList;
    }
  } 
    
}