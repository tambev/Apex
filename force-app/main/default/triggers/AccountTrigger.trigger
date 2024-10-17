trigger AccountTrigger on Account(before insert ,after insert,before update) {
    if(Trigger.isInsert){
        if(Trigger.isBefore)
        {
            Accounttriggerhandler.UpdateDesc(Trigger.new);
            Accounttriggerhandler.pupulateRating(Trigger.new);
        } 
        else if(Trigger.IsAfter)
        {
            Accounttriggerhandler.createOpp(Trigger.new);
        }       
    }
    if (Trigger.isUpdate) {
        
        if (Trigger.isBefore) {
            AssigenmentOneQ1.updatePhonNo(Trigger.New, Trigger.oldmap);
        }
    }    
}