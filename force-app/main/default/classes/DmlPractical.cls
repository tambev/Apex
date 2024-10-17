// this code is created for insert accouun related contact and rcord insertion
public class DmlPractical {
    
    public static void InsertDmlRecord(){
        
        List<Account>accList = new List<Account>();
        List<Contact>conList = new  List<Contact>();
        
        Account acc = new Account();
        acc.Name =' Rahul Shirshath';
        acc.AnnualRevenue =1234;
        accList.add(acc);
        //inserting account record using list;
        insert accList;
        
        Contact con = new Contact();
        con.FirstName = acc.Name;
        con.LastName =acc.Name;
        con.AccountId = accList[0].Id;
        conList.add(con);
        //inserting acount releated contact using list;
        insert conList;
          
        
    }
    
    
}