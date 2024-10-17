@isTest
public with sharing class LeadProcessorTest {
    @istest
    public  static  void testforlead(){
        List<Lead>lde=new List<Lead>();
        for(integer i=0;i<200;i++){
            Lead ld =new Lead();
            ld.LastName='test'+i;
            ld.Company='TATA';
            lde.add(ld);   
    }
     Test.startTest();
       insert lde;
       LeadProcessor lll= new LeadProcessor();
       Database.executeBatch(lll,200);
       Test.stopTest();
       List<Lead>updatelead =[select id from Lead where LeadSource ='Dreamforce'];
       System.assertEquals(200,updatelead.size());
}
}