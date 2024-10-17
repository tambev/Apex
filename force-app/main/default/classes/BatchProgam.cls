public with sharing class BatchProgam implements Database.Batchable<SObject>,Database.stateful  {
    public integer recordCount=0;
    public Database.QueryLocator Start(Database.BatchableContext bc){
       return Database.getQueryLocator('select id,LeadSource from Opportinity');
    }
    public  void execute (Database.BatchableContext bc,List<Opportunity> opList){
      
     
    if(!opList.isEmpty()){
       for(Opportunity opp:opList){
        opp.LeadSource='web';

       }
       update opList;
       recordCount=recordCount+opList.Size();
    }

}
   public void finish(Database.BatchableContext bc){
    System.debug('total recor perocess'+recordcount);
   }
}