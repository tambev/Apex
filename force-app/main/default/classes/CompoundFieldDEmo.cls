public with sharing class CompoundFieldDEmo {
    public static void Compound()
    {
        List<Account> AccList = new List<Account>();
        accList = [SELECT Id,Name,Rating, BillingAddress,ShippingAddress
         FROM Account WHERE AnnualRevenue>5000];
         System.debug(AccList);
    }  
}