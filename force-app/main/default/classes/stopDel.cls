public with sharing class stopDel {
    public static void cheajkDel( List<Account> accList){
        for(Account acc:accList){
            if(acc.Name=='vikrant'){
                acc.addError('you cant delte this account');
            }
            else {
                List<Contact> conList=[select id,name from contact where AccountId=:acc.Id];
               for(Contact con: conList){
                con.Phone=acc.phone;
               } 
    
        }
        
    }
}
}
/*Trigger tt on Account ( ,before update){
if(Trigger.isbeforeN && trigger.insert ||Trigger.isupdate){
    class name mathod name (trigger.new);
}

}*/