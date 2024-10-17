public with sharing class Application {
    public static void applicationDate(List<Candidate__c> canList){
        List<Candidate__c> candidatesToUpdate = new List<Candidate__c>();
        for(Candidate__c can: canList){
            if(can.Application_Date__c == null || can.Application_Date__c != null){
                Candidate__c updatedCandidate = new Candidate__c(Id = can.Id, Application_Date__c = can.CreatedDate.date());
                candidatesToUpdate.add(updatedCandidate);
            }
        }
        if(!candidatesToUpdate.isEmpty()){
            update candidatesToUpdate;
        }
    }
}