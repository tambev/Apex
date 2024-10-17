public  class Soqldemo {
     public static void Soqdemo()
     {
        List<Account>accList=[select Id, Name  from Account limit 5];
        for(Account acc:accList){
            system.debug('list hsving this account'+acc);
        }
     } 
       Public static void cheakquery()
       {
        List<Account>accm=[select Id,Name,Industry from Account where  Name='om'];
          For(Account ac:accm)
          {
            System.debug(ac);
          }
       } 








}