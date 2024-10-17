@IsTest
public with sharing class AccountAssigenment1Test {
    @IsTest
    public static void testProcessAccounts() {
        List<Account> accList = new List<Account>();
        

        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'test' + i;
            acc.BillingStreet = 'street';
            acc.BillingCity = 'city';
            acc.BillingPostalCode = 'code';
            acc.BillingCountry = 'country';
            acc.BillingState = 'state';
            accList.add(acc);  // Add the Account to the listS
        }

            
  insert accList;
        

        List<Account> updatedList = [SELECT Id, BillingStreet FROM Account WHERE Id = :accList[0].Id];
        System.assertEquals('street', updatedList[0].BillingStreet);
        
    }
    //test class for queshtion 2
    @isTest
    public static void accountActiveStatusTest(){
        Account acc = new Account(Name='Test Account',Industry='Engineering');
        insert acc;
         acc.Industry ='Finance';
        
         update acc;
         
         Account updatedAcc=[SELECT Active__c FROM Account WHERE Id=:acc.Id];
         system.assertEquals('Yes',  updatedAcc.Active__c);
    }
      // Q3 test  class

    @isTest
    public static void accountDelitationTest(){
        Account acc=new Account(Name='Test acc',Active__c='Yes');
        insert acc;
       
        try{
            delete acc;
            System.assertEquals('Yes', 'Expected an Exception to be thrown...');
        } catch(DmlException e){
            System.assert(e.getMessage().contains('Cannot Delete Active Yes Account...'));

    }
}
}