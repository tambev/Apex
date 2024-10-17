trigger casetrigger on Case (before insert) {
    if(trigger.isBefore&& Trigger.isInsert){
        CaseoriginHandle.cOrigin(trigger.new);
    }
}