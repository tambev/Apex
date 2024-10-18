public with sharing class CaserelatedAccount {
   public static void caseacc( List<Case> cList){
    List<Account> accList =new List<account>();
    for(Case  c:clist){
          if(c.AccountId!=Null){
        Account Acc = new Account();
        acc.id =c.AccountId;
         acc.Cnumber__c=c.CaseNumber;
         accList.add(acc);
        }      
}
     
       if(!accList.isEmpty())
     update accList;
}
}