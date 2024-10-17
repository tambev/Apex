trigger JobTrigger on jobi__c (before delete, after insert, after update,before update) {
    if (Trigger.isBefore && Trigger.isDelete) {
    }
    
    if (Trigger.isAfter) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            CandidateTriggerHandler.candHiredNoOfCand(Trigger.old, Trigger.new);
        }
    }
}