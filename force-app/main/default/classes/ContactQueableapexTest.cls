@isTest
public class ContactQueableapexTest {
@isTest
private static void contactqueabletest1() {
    list<account> listAcc = new list<account>();
    for (Integer i = 0; i < 200; i++) {
    account acc = new account();
    acc.name = 'Test '+i;
    acc.Active__c = 'Yes';
    listAcc.add(acc);
    }
    insert listAcc;

test.startTest();
ContactQueableapex cq = new ContactQueableapex(listAcc);
system.enqueueJob(cq);
test.stopTest();
List<Account> allAccounts = [select id, name, (select id from contacts) from account];
for (account eachacc : allAccounts){
    Assert.areEqual(1, eachacc.contacts.size());
}
}
}