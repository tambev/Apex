public with sharing class OppManage {
   public static void updateOpp(List<Account> accList, Map<Id, Account> oldMap) {
       List<Opportunity> oppList = new List<Opportunity>();
       
       for (Account acc : accList) {
           Account oldAcc = oldMap.get(acc.Id);
           
           if (acc.Rating != oldAcc.Rating) {
               List<Opportunity> oppRecords = [SELECT Id, Name FROM Opportunity WHERE AccountId = :acc.Id];
               
               for (Opportunity opp : oppRecords) {
                   opp.Name = acc.Name;
                   oppList.add(opp);
               }
           }
       }
       
       if (!oppList.isEmpty()) {
           update oppList;
       }
   }
}