@istest
 public with sharing class BatchApext {
    @istest
     public static void countcases(){
        List<account> accList = new List<Account>();
        for(Integer i=1; i<=5;i++){
            Account acc= new Account(Name='Test'+i);
            accList.add(acc);

        }
         insert accList;

     
       List<Case>caseList=new List<Case>();
       List<Id>accid=new List<Id>();
       for(Account acc  :accList ){
           accid.add(acc.Id);
           for(integer i=1;i<=3;i++){
            Case c =new Case();
            c.Status='New';
            c.Origin='Phone';
            c.AccountId=acc.Id;
            caseList.add(c);
            
           }
           for(integer i=1;i<=3;i++){
            Case c=new Case();
            c.Status='New';
            c.Origin ='Email';
            c.AccountId=acc.Id;
            caseList.add(c);

           }
           for(integer i=1;i<=3;i++){
            Case c =new Case();
            c.Status='New';
            c.Origin='Web';
            c.AccountId= acc.Id;
            caseList.add(c);

           }
       }
       insert caseList;
       Test.startTest();
       BatchApexProgram.caseorigin(accid);
       Test.stopTest();
       List<Account>updatedacc= new List<account>();
       updatedacc=[select Id ,Web_Case__c,Phon_Case__c,Email_Case__c From Account where Id IN :accid];
       System.assertEquals(3, updatedacc[0].Phon_Case__c);
       System.assertEquals(3, updatedacc[0].Web_Case__c);
       System.assertEquals(3, updatedacc[0].Email_Case__c);
       
} 
 }