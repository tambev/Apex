public with sharing class leadcreadtion {
    public static void leadcreationnn(list<Lead> leadRecord){
        list<task> recordinsert= new List<task>();
        for(Lead ld: leadRecord){
            Task taskrecord = new Task();
            taskrecord.WhoId = ld.Id;
            taskrecord.OwnerId = ld.OwnerId;
            taskrecord.Subject = ld.LeadName__c;
            taskrecord.Status = 'In-Progress';

        }
        recordinsert.add(ld);
    }

}