public  class Showmap {
  public static void Showm()
  {
    List<Account>acList=[select ID,Name from Account limit 5];
    Map<Id,Account>accM = new Map<Id,Account>();  
    if(acList.size()>0)
    {
        for(Account acc:acList){
            accm.put(acc.Id, acc);
            System.debug(accM);

        }
    }
  }
    
}