public with sharing class LeadSheduler implements Schedulable {
    Private Id oppId;
    public LeadSheduler( Id oppId) {
       this.oppId=oppId;
      
    }
    public void Execute(SchedulableContext sc){
        Opportunity opp=[select Id ,Name, AccountId from Opportunity where Id=:oppId ];
        Account acc =[select Id ,Name from Account where Id =:opp.AccountId];
        Lead ld =new  Lead(LastName=acc.Name,Company='tt',Status ='Open - Not Contacted');
        insert ld;
    }
}