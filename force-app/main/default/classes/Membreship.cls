public class Membreship {
    public static void members(Id chemicalCompanyId) {
        // Retrieve the Chemical Company record
        Chemical_Company__c chemicalCompany = [
            SELECT Id, Membership__c
            FROM Chemical_Company__c
            WHERE Id = :chemicalCompanyId
            LIMIT 1
        ];
        
        // Check the Membership and print the appropriate message
        if (chemicalCompany.Membership__c == 'NORMAL') {
            System.debug('You have a 10% discount.');
        } else if (chemicalCompany.Membership__c == 'PRIMIUM') {
            System.debug('You are a Premium user. You get a 30% discount.');
        } else {
            System.debug('No valid membership found.');
        }
    }
}