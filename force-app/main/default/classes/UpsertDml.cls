public class UpsertDml {
 public static void UpsertDmlDEmo()
 {
    List<account> accList=[SELECT Id, Name,AnnualRevenue,Rating FROM Account WHERE Rating ='Hot'];
 if(!accList.isEmpty())
 {
    for(Account acc: accList)
    {
        acc.Industry ='Energy';
        acc.AnnualRevenue =5678;
    }

 } 
     for(Integer i=0; i<5; i++)
     {
        Account acc=new Account();
        acc.Name = 'TestUpsert'+i;
        acc.AnnualRevenue= 235465;
        accList.add(acc);
     }
     
     Upsert accList;
 }




}