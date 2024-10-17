//Module 11
//Assignment-3
public with sharing class Module11 {
    //Question 1
    public static void createUserAndAccount(String userName,String accountName){
        Account acc=new Account(Name=accountName);
        insert acc;
        System.debug('Account Created Successfully with ID:' +acc.Id);
 
        User usr=new User();
        usr.FirstName='John';
        usr.LastName='Doe';
        usr.Email='vikrantzine@gmail.com';
        usr.UserName=userName;
        usr.Alias='jDoe';
        usr.ProfileId = [SELECT Id FROM Profile WHERE Name='Identity User' LIMIT 1].Id;
        usr.TimeZoneSidKey='America/Los_Angeles';
        usr.LocaleSidKey='en_US';
        usr.EmailEncodingKey='UTF-8';
        usr.LanguageLocaleKey = 'en_US';
        usr.IsActive=true;
        insert usr;
        System.debug('User Created Succesfully with ID:' +usr.Id);
    }
    //Question 2
    @future
    public static void testCreateUserAndAccount(String userName,String accountName){
        Account acc=new Account(Name=accountName);
        insert acc;
        System.debug('Account Created Successfully with ID:' +acc.Id);
 
        User usr=new User();
        usr.FirstName='Test';
        usr.LastName='User';
        usr.Email='vikrantzine@gmail.com';
        usr.UserName=userName;
        usr.Alias='TUser';
        usr.ProfileId = [SELECT Id FROM Profile WHERE Name='Identity User' LIMIT 1].Id;
        usr.TimeZoneSidKey='America/Los_Angeles';
        usr.LocaleSidKey='en_US';
        usr.EmailEncodingKey='UTF-8';
        usr.LanguageLocaleKey = 'en_US';
        usr.IsActive=true;
        insert usr;
        System.debug('User Created Succesfully with ID:' +usr.Id);
    }
    //Question 3
    @future
    public static void countAccountContacts(String accountId){
        Integer contactCnt=[SELECT COUNT() FROM Contact WHERE AccountId=:accountId];
        System.debug('Number of Contact for Account'+accountId+':'+ contactCnt);
    }
    //Question 4,5
    @future
    public static void callFutureFromFuture(String accountName,String userName){
        if (!System.isFuture()){
            Account acc=new Account();
            acc.Name=accountName;
            insert acc;
            System.debug('Account Created Successfully with ID'+acc.Id);
 
            User usr=new User();
            usr.FirstName='Future';
            usr.LastName='to Future';
            usr.Email='vikrantzine@gmail.com';
            usr.UserName=userName;
            usr.Alias='FutureToFure';
            usr.ProfileId = [SELECT Id FROM Profile WHERE Name='Identity User' LIMIT 1].Id;
            usr.TimeZoneSidKey='America/Los_Angeles';
            usr.LocaleSidKey='en_US';
            usr.EmailEncodingKey='UTF-8';
            usr.LanguageLocaleKey = 'en_US';
            usr.IsActive=true;
            insert usr;
            System.debug('User Created Succesfully with ID:' +usr.Id);
 
            countAccountContacts(acc.Id);
        }
    }
}
 
//Calling Method-Module11.createUserAndAccount('johndoe@test.com', 'Sample Account');