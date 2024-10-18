trigger OpportunityTrigger1 on Account (after update) {
    if (Trigger.isAfter && Trigger.isUpdate) {
        OppManage.updateOpp(Trigger.new, Trigger.oldMap);
    }
}