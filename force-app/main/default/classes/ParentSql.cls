public  class ParentSql {
    public static void parenttochildquery()
    {
        List<Account>accList=[SELECT Id, Name, AnnualRevenue, BillingAddress, ShippingAddress ,Description FROM Account WHERE Name='Anand Sir'];
        for(Account acc:accList){
            system.debug('accList...'+acc.BillingAddress);
           /* for(Contact con: acc.Contacts){
                system.debug(con.FirstName+''+con.LastName);
            }*/
        }
    }
    public static void customsql()
    {
        List<demov__c> dList = [select Id,Name,(select Id,Name from demo2s__r) from demov__c];
        
        for(demov__c dd : dList){
            system.debug(dd.Name);
            for(demo2__c tt:dd.demo2s__r){
                system.debug(tt.Name);
            }
        }        
        
    }
}