public class kk {

     public Static void obs()
 {
     Set<Id> AccId= new Set<Id>();
     List<Account> AccList= new List<Account>();
     AccList=[SELECT ID,Name FROM Account Limit 5];
      for(Account acc:AccList)
      {
          AccId.add(acc.id);
      }
     
        System.Debug('setof ids is'+AccId);
     
     
 }
    
    
    
}