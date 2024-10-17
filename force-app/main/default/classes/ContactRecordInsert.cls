public with sharing class ContactRecordInsert {
    public static void contactRecord(List<Contact> conList){
        for(Contact con:conList){
            if(con.AccountId==NULL){
                con.addError('parent Account is not created');

            }
            
            }
        }
    }
