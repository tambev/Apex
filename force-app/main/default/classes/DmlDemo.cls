public with sharing class DmlDemo {
    
    public static void InsertdmlDemo() {
        
        Account acc = new Account();
        acc.Name = 'Test Dml 01';
        acc.AnnualRevenue = 123455;
        Insert acc;
    }
    public Static Void insertDmlList()
    {
        
        List<Account>accList = new List<Account>();
        
        Account acc = new Account();
        acc.Name ='Test Dml 102';
        acc.AnnualRevenue = 675840;
        accList.add(acc);
        
        Account acc1 = new Account();
        acc1.Name = 'Test Dml 103';
        acc1.AnnualRevenue = 3456765;
        accList.add(acc1);
        insert accList;
        
        
    } 
    
    
    
    
    
}