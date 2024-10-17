public with sharing class AssigenmentOneQ1 {
public static void recordInseert(){
   Account acc = null;
  try {
     acc = new Account();
    acc.Name='Assigendemo1';
    acc.AnnualRevenue = 3254;
    insert acc;
        
} catch (Exception e) 
{
    System.debug( 'followiing error has been occer.....'+e);

} 

    try {
        Contact con =new Contact();
        con.FirstName = acc.Name;
       // con.LastName = 'Rathod';
        con.country__c ='india';
        con.AccountId =acc.id;

        insert con;

    } catch (Exception contectececption) 
    {
        system.debug('the following exception has benn occcer'+contectececption);
    }
}
        
public static void updatePhonNo(List<Account> accList, Map<Id, Account> accOldMap) {
    for (Account acc : accList) {
        
        if (acc.Phone!= accOldMap.get(acc.Id).Phone) {
            acc.Description = 'old phone number is updated';
        }
    }
}


}