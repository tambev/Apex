public with sharing class InactiveJobExpire implements Schedulable {
    public void execute(SchedulableContext sc) {
        List<jobi__c> jobList = [SELECT Id, Active__c FROM jobi__c WHERE Expires_ON__c < TODAY AND Active__c != false];
        
        for (jobi__c job : jobList) {
            job.Active__c= false;
        }

        if (!jobList.isEmpty()) {
            update jobList;
        }
    }
}