public with sharing class LeadValueSet {
  public static void leadUpdate( List<Lead> leadList){
    for(Lead ld:leadList){
        if(ld.Status!= null ||ld.Status==null){
    ld.Status='Working-Contacted';
}
    }
  }
}