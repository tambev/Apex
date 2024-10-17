public class AccountContactWithvishal{
    public static void  demo(List<Account> accList){
        for(Account acc : acclist){
            if(acc.Rating == 'Hot'){
                Contact con = new Contact();
                con.LastName = 'Vishal';
                con.AccountId = acc.Id;
            }
        }
    }
}