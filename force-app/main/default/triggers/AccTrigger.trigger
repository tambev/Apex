trigger AccTrigger on Account (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountCityCopy.copyStateCity(trigger.new);
        }
    }

}