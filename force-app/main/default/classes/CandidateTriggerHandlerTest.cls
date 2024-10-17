@isTest
public with sharing class CandidateTriggerHandlerTest {

    @TestSetup
    static void setupTestData(){
        List<jobi__c> jobList = new List<jobi__c>();
        jobList.add(new jobi__c(Name='Job 1', Active__c=true, Number_of_positions__c=10, Expires_ON__c=Date.today()));
        jobList.add(new jobi__c(Name='Job 2', Active__c=true, Number_of_positions__c=5, Expires_ON__c=Date.today()));
        insert jobList;

        List<Candidate__c> canList = new List<Candidate__c>();
        canList.add(new Candidate__c(First_Name__c='Test', Last_Name__c='Data', Expected_Salary__c=5000, Email__c='ABC@GF.COM', job__c=jobList[1].Id));
        insert canList;
    }

    // Test for checking expected salary logic
    @isTest
    public static void testCheckCandidatExpectedSal() {
        // Re-query the data after insert
        List<Candidate__c> canList = [SELECT Id, Expected_Salary__c FROM Candidate__c];
        
        // Call the method being tested
        Test.startTest();
        CandidateTriggerHandler.checkCandidateExpectedSal(canList);  
       Test.stopTest();
        // Re-query the data to verify updates
        canList = [SELECT Id, Expected_Salary__c FROM Candidate__c];
        for (Candidate__c can : canList) {
            System.assertEquals(5000, can.Expected_Salary__c, 'Expected Salary Error...');
        }
    }

    // Test for Application Date being set to Created Date
    @isTest
    public static void testApplicationDate() {
        // Re-query the data after insert
        List<Candidate__c> canList = [SELECT Id, Application_Date__c FROM Candidate__c];
        
        // Call the method being tested
        CandidateTriggerHandler.ApplicationDate(canList);  

        // Re-query the data to verify the updates
        canList = [SELECT Id, Application_Date__c FROM Candidate__c];
        for (Candidate__c can : canList) {
            System.assertEquals(System.today(), can.Application_Date__c, 'Application Date should be today\'s date.');
        }
    }
}