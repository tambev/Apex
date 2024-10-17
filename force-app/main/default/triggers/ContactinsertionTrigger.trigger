trigger ContactinsertionTrigger on contact (before insert) {
    if(Trigger.isBefore && Trigger.isinsert){
        ContactRecordInsert.contactRecord(trigger.new);
        //AccountContactWithvishal.accountContactWithvishalmethod(Trigger.new);
        AccountContactWithvishal.demo(Trigger.new);
    }
    
    }