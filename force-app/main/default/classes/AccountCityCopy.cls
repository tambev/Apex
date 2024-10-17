public with sharing class AccountCityCopy {
    public static void copyStateCity(List<Account>accList){
        for(Account acc:accList){
            if(acc.BillingCity!= null && acc.BillingState!=null){
            
           acc.ShippingCity=acc.BillingCity;
           acc.ShippingState=acc.BillingState;
    }
}
}
}