@isTest
public class AccountBatchTest {
@isTest
public static void testBatch1() {
list<account> listAcc = new list<account>();
for (Integer i = 0; i < 900; i++) {
account acc = new account();
acc.name = 'Test '+i;
listAcc.add(acc);
}
insert listAcc;
test.startTest();
AccountsBatch ab = new AccountsBatch();
Database.executeBatch(ab, 900);
test.stopTest();
List<Account> allAccounts = [select id, name, Description from account];
for (account eachacc : allAccounts){
    Assert.isTrue(eachacc.Description.contains('batch'));
}

}
}