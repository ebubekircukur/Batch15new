@isTest
public class AccountTriggerTest {
@isTest
static void testAccTrg1(){
list<account> listAcc = new list<account>();
account acc = new Account();
acc.Name = 'JN Test';
acc.Industry = 'Energy';
listAcc.add(acc);
Account acc2 = new Account();
acc2.name = 'UN Test';
listAcc.add(acc2);
Account acc3 = new Account();
acc3.name = 'TN Test';
listAcc.add(acc3);
insert listAcc;
list<account> list1 = [select id, name from Account];
Assert.areEqual(3, list1.size());
delete acc2;
Assert.areEqual(3, list1.size());
undelete acc2;
Assert.areEqual(3, list1.size());
}
}