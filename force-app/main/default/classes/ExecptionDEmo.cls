public  class ExecptionDEmo {
    public static void ExedEmo()
    {
     List<Account> accList = new List<Account>();
      accList=[SELECT Id,Name,AnnualRevenue,Rating FROM Account WHERE Rating='Cold'];
      if(!accList.isEmpty()){
        for(Account acc:accList)
        {
            acc.Name= 'kantaram';
            acc.AnnualRevenue = 105272;
            accList.add(acc);
        }
      }
      update acclist;
     try {
        
        for(integer i=0; i<5; i++)
        {
            Account acc =  new Account();
            acc.Name ='karim'+i;
            acc.AnnualRevenue = 567;
         accList.add(acc);
        }
        if(!accList.isEmpty()){
            insert accList;
        }
     } catch (Exception e) {
        system.debug(e);
     }








    }
}