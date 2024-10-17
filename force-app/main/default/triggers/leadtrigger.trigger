trigger leadtrigger on Lead (before update, after update) {
    
    // Before Update Logic
    if (Trigger.isBefore && Trigger.isUpdate) {
        LeadValueSet.leadUpdate(Trigger.new);
    }
    
    // After Update Logic
    if (Trigger.isAfter && Trigger.isUpdate) {
        CaseoriginHandle.cOrigin(Trigger.new);
    }
}