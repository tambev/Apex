trigger ccTrigger on Case (after insert) {
    CaserelatedAccount.caseacc(trigger.new);
}