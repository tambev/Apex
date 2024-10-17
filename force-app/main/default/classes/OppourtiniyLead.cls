public class OppourtiniyLead implements Database.Batchable<SObject> {

    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator([SELECT Id, Name FROM Opportunity]);
    }

    public void execute(Database.BatchableContext bc, List<SObject> oppList) {
        List<Opportunity> opportunitiesToUpdate = new List<Opportunity>();

        for (Opportunity opp : (List<Opportunity>)oppList) {
            opp.LeadSource = 'Dreamforce';
            opportunitiesToUpdate.add(opp);
        }

        if (!opportunitiesToUpdate.isEmpty()) {
            update opportunitiesToUpdate;
        }
    }

    public void finish(Database.BatchableContext bc) {
        System.debug('Opportunity Lead Source has been updated.');
    }
}
