public class DescriptionChange implements Database.Batchable<SObject> {

    // Start method to define the scope of records to process
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator([SELECT Id, Name FROM Account WHERE Rating = 'Hot']);
    }

    // Execute method to process each batch of records
    public void execute(Database.BatchableContext bc, List<SObject> scope) {
        List<Account> toUpdate = new List<Account>();

        // Iterate over the scope of records, casting to List<Account>
        for (Account acc : (List<Account>)scope) {
            acc.Description = 'This record has been updated using the batchable method';
            toUpdate.add(acc); // Add the updated account to the list
        }

        // Perform the update only if there are records to update
        if (!toUpdate.isEmpty()) {
            update toUpdate;
        }
    }

    // Finish method to execute after all batches are processed
    public void finish(Database.BatchableContext bc) {
        System.debug('All accounts have been updated');
    }
}
