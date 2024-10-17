@isTest
public with sharing class AccountProcessorTest {
@isTest
public static void countcont(){
   List<Account> accList= new List<account>();
   for(integer i=1;i<=100;i++){
    Account acc= new account();
    acc.Name= 'test'+i;
    accList.add(acc);
   }
   test.startTest();
   insert accList;
   List<Contact> conList= new List<Contact>();
   List<id>accid=new List<id>();
   for(Account acc:accList){
  
   Contact con = new Contact();
   con.FirstName= 'test';
       con.LastName=acc.Name;
       con.AccountId=acc.Id;
       conList.add(con);
       accid.add(acc.Id);
   }
         insert conList;
        
         AccountProcessor.countContacts(accid);
         test.stopTest();
      List<Account>accs=[select Id,Number_Of_Contacts__c From Account];
      System.assertEquals(1,accs[2].Number_Of_Contacts__c,'conatact are counted sucessfully');
     
}
}