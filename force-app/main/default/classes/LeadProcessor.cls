public with sharing class LeadProcessor  implements Database.Batchable<SObject>{
   public Database.QueryLocator start (Database.BatchableContext bc)
{
    return Database.getQueryLocator('select id ,LeadSource from Lead');

}
   public void execute(Database.BatchableContext bc ,List<Lead> scope){
    if(!scope.isEmpty()){
      for(Lead ld:scope){
       ld.LeadSource ='Dreamforce';

      }
      update scope;

    }
    
   }
   public void finish(Database.BatchableContext bc){

   }
       
}