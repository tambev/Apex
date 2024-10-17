trigger CandidateTrigger on Candidate__c (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            CandidateTriggerHandler.checkCandidateExpectedSal(Trigger.new);   //Question 1
          
            CandidateTriggerHandler.ApplicationDate(Trigger.new);    //Question 3
        }
    }
}