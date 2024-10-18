public class LeadDeletion implements Database.Batchable<Sobject> {

    public Database.QueryLocator start(Database.BatchableContext bc){ 

        return Database.getQueryLocator([SELECT Id FROM Lead WHERE LeadSource = 'Working - Not Contacted']);

    }
        public void execute(Database.BatchableContext bc,List<Lead> scope){
             delete scope;
        }
      
         public void finish(Database.BatchableContext bc){
            System.debug( 'All record is deleted');

         }
    
}  