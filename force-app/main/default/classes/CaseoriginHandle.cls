public with sharing class CaseoriginHandle {
    public static void cOrigin(List<Lead> leadList){
        for(Lead casetask:leadList){
            if(casetask.Origin=='phone'){
                casetask.priority='High';

            } 
            else {
                {
                    casetask.priority='Low';
                }
            }
        }
    }
}