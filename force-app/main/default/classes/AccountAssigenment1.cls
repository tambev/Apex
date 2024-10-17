public with sharing class AccountAssigenment1 {
    public static void adress(List<Account> accList) {
        for(Account acc: accList){
            acc.ShippingStreet = acc.BillingStreet;
            acc.ShippingCity = acc.BillingCity;
            acc.ShippingState = acc.BillingState;
            acc.ShippingPostalCode = acc.BillingPostalCode;
            acc.ShippingCountry = acc.BillingCountry;

            
            acc.Industry = 'Engineering';
        }

    }
    //queshtion 2
    public static void accountActiveStatus(List<Account> accList, Map<Id,Account> oldMap){
        for(Account acc:accList){
            if(acc.Industry == 'Finance' && oldMap.get(acc.Id).Industry == 'Engineering'){
                acc.Active__c='Yes';
            }
        }
    }
    //queshtion 3
    public static void accountDelitation(Map<Id,Account>oldMap){
        for(Account acc: oldMap.values()){
            if(acc.Active__c=='Yes'){
              acc.addError('you cant delet this account');
            }
            Integer oppCount=[select  COUNT() from Opportunity where AccountId=:acc.Id];
            if(oppCount>0){
                acc.addError('we can delete account it has an realted oppourtinity');
            }
        }
    }
    // queshtion no 4
    public static void insertAccountRelatedTask(List<Account> accList) {
        List<Task> tasksList = new List<Task>();
    
        for (Account acc : accList) {
            if (acc.AnnualRevenue != null && acc.AnnualRevenue > 50000) {
                Task newTask = new Task();
                newTask.Subject = 'Follow up with High Revenue Account';
                newTask.WhatId = acc.Id;  // Associate the task with the account
                newTask.Status = 'Not Started';
                newTask.Priority = 'Normal';
                tasksList.add(newTask);
            }
        }
    
        // Insert tasks outside the loop
        if (!tasksList.isEmpty()) {
            
            insert tasksList;
        }
    }
    public static void updateContactPhoneOnAccountChange(List<Account>accList){//Q5
        List<Contact>conList=new List<Contact>();
        for(Account acc:accList){
            Account oldAcc=(Account)Trigger.oldMap.get(acc.Id);
            if(acc.Phone!=NULL && acc.Phone!=oldAcc.Phone){
                List<Contact>relCon=[SELECT Id, OtherPhone, HomePhone FROM Contact WHERE AccountId=:acc.Id];
                for(Contact con:relCon){
                    con.OtherPhone=oldAcc.Phone;
                    con.HomePhone= acc.Phone;
                    conList.add(con);
                }
            }
        }
        if(!conList.isEmpty()){
            update conList;
        }
    }//Q6
     
    public static void accountDeletionEmail(Map<Id,Account>oldMap){
        List<Messaging.SingleEmailMessage>emails=new List<Messaging.SingleEmailMessage>();
        for(Account acc:oldMap.values()){
            Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
            email.setToAddresses(New String[] {'vikrantzine@gmail.com'});
            email.setSubject('Account Deleted'+acc.Name);
            email.setPlainTextBody('The Account '+acc.Name+' Has been Deleted...');
            emails.add(email);
        }
        if(!emails.isEmpty()){
            Messaging.sendEmail(emails);
        }
    }
}