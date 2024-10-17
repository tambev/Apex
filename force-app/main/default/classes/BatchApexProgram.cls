public with sharing class BatchApexProgram {
    @future
    public static void caseorigin(List<Id> accId){
        List<Account>accList=[SELECT Id,Email_Case__c,Phon_Case__c,Web_Case__c,(SELECT id,Origin from Cases)From Account where Id IN:accId];
        for(Account acc: accList){
             Integer Email=0,Phon=0,Web=0;
             for(Case ca:acc.Cases){
                if(ca.Origin =='Phone'){
                    Phon++;
                }else if(ca.Origin=='Email'){
                    Email++;
                }else if (ca.Origin =='Web'){
                    Web++;
                }

             }
            acc.Phon_Case__c=Phon;
            acc.Web_Case__c=Web;
            acc.Email_Case__c=Email; 
    }
    if(!accList.isEmpty()){
        update accList;
    }
}
}