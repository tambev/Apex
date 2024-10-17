trigger tasktriggerdemo on Task (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
       TaskPriority.taskP(Trigger.new);
    }
}