public with sharing class picklist {
   
     public static void task(){
         List<Account> accList= new List<Account>();
        Account acc =new Account();{
            acc.Name='om';
            acc.BillingCity='Delhi';
            acc.BillingState='UP';
            acc.BillingCountry='India';
            acc.BillingPostalCode='110085';
            acc.BillingStreet='parb';
            acc.Rating='Hot';
                             
            insert acc;
           accList.add(acc);
        


     }
}
}