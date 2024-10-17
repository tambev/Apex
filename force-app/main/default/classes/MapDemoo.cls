public class MapDemoo {
   
     Public Static Void MpWithloop()
         { 
             List<Account>AccList=new List<Account>();
             AccList=[SELECT Name,CreatedDate FROM Account LIMIT 5];
             
               Map<Id,Account>accMap=new Map<Id,Account>();
             for(Account acc:AccList){
                 accMap.put(acc.id,acc);
             }
           }
            
}