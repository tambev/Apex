trigger AccountAssignmentTrigeer on Account (before insert,before Update ,before Delete,after Insert) {
  if(Trigger.isBefore){
    if(Trigger.isInsert){
        AccountAssigenment1.adress(Trigger.new);//Q1
    }
  
    if(Trigger.isUpdate){
    AccountAssigenment1.accountActiveStatus(trigger.new, trigger.oldMap);//Q2
    AccountAssigenment1.updateContactPhoneOnAccountChange(Trigger.new);
    }
     if(Trigger.isDelete){
    AccountAssigenment1.accountDelitation(trigger.oldMap);//Q3
    AccountAssigenment1.accountDeletionEmail(Trigger.oldMap);
  }
  }
  if(Trigger.isAfter){
    if(Trigger.isInsert){
      AccountAssigenment1.insertAccountRelatedTask(Trigger.new);//Q4
    }
  }
}