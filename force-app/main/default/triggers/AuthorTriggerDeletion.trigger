trigger AuthorTriggerDeletion on Author__c (before insert, before update ,before delete) {
  if(Trigger.isBefore){
    if(Trigger.isInsert|| Trigger.isUpdate){
        AccountDisc.updatediscription(Trigger.new);
    }
  }
  if(Trigger.isDelete){
    AccountDisc.preventDeletion(Trigger.old);
  }
}