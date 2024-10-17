public with sharing class DailyLeadProcessor implements Schedulable   {
    public void execute(SchedulableContext sc){
      List<Lead>leadList=[select id from Lead where Leadsource = NULL limit 200];
      for(Lead ld:leadList){
        ld.LeadSource ='DreamForce';

      }
      if(!leadList.isEmpty()){
        update leadList;

      }
    }
    
}