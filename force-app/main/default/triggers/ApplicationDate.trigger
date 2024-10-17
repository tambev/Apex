trigger ApplicationDate on Candidate__c (after insert) {
    // Call the handler method to set the Application Date
    Application.applicationDate(trigger.new);
}