public with sharing class OppourtinityTask {
    @future(Callout = false)
    public static void sendemail(Id oppId) {
        Opportunity opp = [SELECT Id, Name, StageName, ContactId, AccountId FROM Opportunity WHERE Id = :oppId];
        Contact relatedcon = [SELECT Id, Email, FirstName FROM Contact WHERE Id = :opp.ContactId];
        
        if (relatedcon.Email != NULL) {
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(new String[] { relatedcon.Email });
            mail.setSubject('Congratulations on your Won Opportunity!');
            mail.setPlainTextBody('Your Opportunity ' + opp.Name + ' is Closed Won.');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
    }

    public static void sheduleleadcreation(Id oppId) {
        Datetime tomorrow = System.now().addDays(1);
      
        String cronExp = '0 0 ' + tomorrow.hour() + ' ' + tomorrow.day() + ' ' + tomorrow.month() + ' ? ' + tomorrow.year();
        
        try {
            System.schedule('lead creation ' + oppId, cronExp, new LeadSheduler(oppId));
        } catch (Exception e) {
            System.debug('Error scheduling lead creation: ' + e.getMessage());
        }
    }
}