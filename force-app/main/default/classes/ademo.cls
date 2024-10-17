public class ademo {
  public static  void accdemo()
    {   
      List <Account>accList=new List<Account>();
      Account acc1=new Account(Name='kartik',Active__c='No',AnnualRevenue=34999);
      accList.add(acc1);
           
          Account acc2 =new Account();  
          acc2.Name='rahim';
          acc2.Active__c='Yes';
          acc2.AnnualRevenue=123456;
        accList.add(acc2);
        insert accList;       
   }    
}