public with sharing class LeadIndustry {

    public static void  leadDEmo(List<Lead> leadList){
           
         for(Lead leadrecord:leadList){

            if(leadrecord.Industry=='HEALTHCARE'){
              leadrecord.LeadSource='Purchesed List';
              
         }

    }
}
}