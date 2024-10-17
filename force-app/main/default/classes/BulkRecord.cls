public class BulkRecord {
public static void BulkRecoRdInsert()
{
List<Account>accList = new List<Account>();
For(Integer i=0;I<=200;i++){
Account acc = new Account();
acc.Name = 'test'+i;    
acc.AnnualRevenue =124564;
accList.add(acc);  

}
insert accList;
}
public static void  updateDml() {
    
    List<Account> accList = [SELECT Id, Name, Industry, Rating FROM Account WHERE Rating = 'Hot'];
    
   
    if (!accList.isEmpty()) { 
       
        for (Account acc : accList) {
            acc.Industry = 'Media'; 
        }
      
        update accList; 
    }
    
   
    System.debug( accList);
}

}