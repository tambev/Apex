@istest
public with sharing class AccountBasedOrigint {
@istest
  public static void countcon(){
    List<Account> accList=new List<Account>();
    for(Integer i=1;i<=200;i++){
        
      accList.add(new Account (Name='Test'+i));
    }
    Test.startTest();
    insert accList;
     List<Contact> conList = new List<Contact>();
     List<Id>accId= new List<Id>();
     for(Account acc:accList){
        contact con= new Contact();
       con.FirstName= 'test';
       con.LastName=acc.Name;
       con.AccountId=acc.Id;
       conList.add(con);
       accId.add(acc.Id);

     }
     insert conList;
     AccountBasedOrigin.countcontact(accId);
     test.stopTest();
    List<Account>accs=[select Id,Count_No_Of_contact__c From Account];
      System.assertEquals(1,accs[0].Count_No_Of_contact__c,'conatact are counted sucessfully');

  }
    

}