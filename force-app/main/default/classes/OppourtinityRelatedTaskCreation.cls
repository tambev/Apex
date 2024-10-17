public with sharing class OppourtinityRelatedTaskCreation {
   public static void relatedtask(List<Opportunity> oppList){
    for(Opportunity opp:oppList){
        if(opp.StageName=='Closed Won'){
            Task tk= new Task();
            tk.Subject='related task';
            tk.Whatid=opp.id;
            
        }
        insert tk;
    }

   }
}