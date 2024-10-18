//This code is created for cheak that Account is updated then we want to create an Contact for that Account
public with sharing class AccountRelatedCon {

public static void AcountCheak( List<Account> accList ,Map<id,Account>oldmap){

List<Contact> conlist= new List<Contact>();

for(Account ac:accList){

Account getac=oldmap.get(ac.id);

if(ac.Name!=getac.Name){
Contact con= new Contact();
con.FirstName=ac.Name;
con.AccountId = ac.Id;
con.phone=ac.phone;
con.LastName='tambe';

conList.add(con);
}
}
if(!conList.isEmpty()){

insert conlist;
}
}

}
/* i am discribing thst how can write trigger for that handler class 

Trigger AccountTrigger on Account(after update){
if(Trigger.isafter && Trigger.isupdate){
i will call bwlow mwthod in trigger;
}

/*.........................................................................................................................../
write now i am writing same code but diffrence is that to  want to update Contact if Account is updated
// handler Class//
public classAccountConUpdate{

public static void accuntstoup(List<Account> accList,map<id,Account> oldmap){

List<contact>conList=new List<contact>();

for(Account ac:accList)accoun{

Account acc=oldmap.get(ac.id);

if( ac.Nmae!=acc.Name){
List<contact>accountToUpdate=[select id ,name from Contact where AccountId=ac.id ];

for(Contact c:accountToUpdate){

c.FirstName=ac.Name;

c.Phone=1234566788;

conList.add(c);
}
if(!conList .isempty()){

update conList;
}
}
}
}*/
/* public calss insert account{
public static void inser(List<Account> aclist){
}
}*/