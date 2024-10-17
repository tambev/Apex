public  class Accounttriggerhandler {
     public static void UpdateDesc(List<Account> accList){
        for(Account acc:accList){
            acc.Description ='Accountis created using handler class';
        }
     }
    public static void pupulateRating(List<Account>accList)

    {
        
        for(Account acc:accList)
        {
            if(acc.Industry !=Null && acc.Industry=='Media')
                 acc.Rating ='Hot';
        }
            

    }
     public static void createOpp(List<Account>accList){
        List<Opportunity>oppList =new List<Opportunity>();
        for(Account acc: accList){
            Opportunity opp =new Opportunity();
             opp.Name =acc.name;
             opp.StageName ='Prospecting';
             opp.CloseDate= System.today();
             opp.AccountId =acc.id;
             oppList.add(opp);
        }
         if(!oppList.isEmpty())
         {
            insert oppList;
         }
    }
}