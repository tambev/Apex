//Assignment-4
public with sharing class CandidateTriggerHandler {
    //Question 1
    public static void checkCandidateExpectedSal(List<Candidate__c>candList){
        for(Candidate__c can:candList){
            if(can.Expected_Salary__c==NULL){
                can.Expected_Salary__c.addError('Candidate Excpected Salary is Missing...');
            }
        }
    }
    //Question 3
    public static void ApplicationDate(List<Candidate__c>canList){
        for(Candidate__c can:canList){
            can.Application_Date__c = System.today();
        }
    }
}