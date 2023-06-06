public class UpdateContactsNumberforAccountwithFuture {
@future
public static void updatecontactsnumber(set<id> setIds) {
list<account> listofAccounts = [select id, Number_of_Contacts__c,(select id from contacts) from Account where id in :setIds];

for(account eachAccount : listofAccounts){

eachAccount.Number_of_Contacts__c = eachaccount.Contacts.size();
}
update listofAccounts;    
}
}