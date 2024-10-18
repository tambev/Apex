 // in this cod i just created a oppourtinnit fr an  Acount  when Account is created

public with sharing class OppcreateforAccount {

    public static void insertoppforacounr(List<Account> AccList){

        List<Opportunity> oppList = new List<Opportunity>();

        for( Account acc:accList){

            Opportunity op =new Opportunity();

            op.Name='acc.Nmae';

            op.AccountId=acc.id;

            oppList.add(op);

        }
        if(!oppList.isEmpty()){
            insert oppList;

        }
    }
}
    
