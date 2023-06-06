public class assignsoql1 {

public static void listcontactmethod() {
list<contact> lstcontact= [select id, name, accountid, account.name from contact];  

for (contact eachcontact : lstcontact){
   
    system.debug('Account id is '+ eachcontact.accountid);
    system.debug('Account name is '+ eachcontact.account.name);
}
}
public static void listaccountmethod() {
list<account> lstaccount= [select id, name, (select id, name from contacts) from account];   
for (account eachaccount : lstaccount){
    system.debug('Contact id is '+ eachaccount.id);
    system.debug('Contact name is '+ eachaccount.name);
}
}
public static void totalcontacts() {
    list<contact> applecontact = [select id, name, account.name from contact where account.name like 'Apple'];
    system.debug('Total contact of apple is '+ applecontact.size());
    list<contact> metacontact = [select id, name, account.name from contact where account.name like 'Meta'];
    system.debug('Total contact of meta is '+ metacontact.size());
    list<contact> teslacontact = [select id, name, account.name from contact where account.name like 'Tesla'];
    system.debug('Total contact of tesla is '+ teslacontact.size());
    list<contact> microsoftcontact = [select id, name, account.name from contact where account.name like 'Microsoft'];
    system.debug('Total contact of apple is '+ microsoftcontact.size());
    
}
}