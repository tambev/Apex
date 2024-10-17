public with sharing class Jobtriggerclass {
    public static void checkActive(List<jobi__c> jList) {
        for (jobi__c jj : jList) {
            if (jj.Active__c) { // Simplified condition
                jj.addError('Job is active, you cannot delete this job.');
            }
        }
    }
}