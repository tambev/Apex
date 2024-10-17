public class AddPrimaryContact implements Queueable {
    private Contact contactToInsert;
    private String stateAbbreviation;

    public AddPrimaryContact(Contact contactToInsert, String stateAbbreviation) {
        this.contactToInsert = contactToInsert;
        this.stateAbbreviation = stateAbbreviation;
    }

    public void execute(QueueableContext context) {
        List<Account> accountsToUpdate = [SELECT Id FROM Account WHERE BillingState = :stateAbbreviation LIMIT 200];
        List<Contact> contactsToInsert = new List<Contact>();

        for (Account acc : accountsToUpdate) {
            Contact newContact = contactToInsert.clone(false, true, false);
            newContact.AccountId = acc.Id;
            contactsToInsert.add(newContact);
        }

        if (!contactsToInsert.isEmpty()) {
            insert contactsToInsert;
        }
    }
}