@isTest
public with sharing class DailyLeadProcessorTest {
@TestSetup
public static void  createlead(){
List<Lead> ld =new List<Lead>();
for(integer i=0;i<200;i++){

    Lead l = new Lead();
        l.FirstName='test'+i;
        l.LastName='tt';
        l.Company='tcs';
        ld.add(l);
}
    if(!ld.isEmpty()){
    insert ld;
    }
    
}
    @isTest
    public static void testLeadToUpdate(){
        String cronExp = '0 0 0 * * ?';
        Test.startTest();
        String jobId=System.schedule('Test Daily Lead Processor', cronExp, new DailyLeadProcessor());
        Test.stopTest();
        List<Lead>updatedLead=[SELECT Id,LeadSource FROM Lead WHERE LeadSource='DreamForce'];
        System.assertEquals(200, updatedLead.size(), 'All least should have been updated.');
    }
    public DailyLeadProcessorTest() {
 
    }
}