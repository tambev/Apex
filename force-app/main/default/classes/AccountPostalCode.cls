public class AccountPostalCode {
    public static void code(List<Account> accList){
         for (Account acc : accList) {
        if (acc.Match_Billing_Address__c == true && acc.BillingPostalCode != null) {
            acc.ShippingPostalCode = acc.BillingPostalCode;
        } else if (acc.Match_Billing_Address__c == false) {
            acc.ShippingPostalCode = null; 
        }   
        
     }
}       
}