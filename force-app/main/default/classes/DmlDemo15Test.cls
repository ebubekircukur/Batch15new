@istest
public with sharing class DmlDemo15Test {
@istest
public static void testDML1() {
DmlDemo15.dmlInsertDemo1();
list<account> listAcc = [select id, name from Account];    
system.assertEquals(1, listacc.size());
assert.areequal(1, listacc.size());
Assert.areEqual('Salesforce', listAcc[0].name);
}
@istest
public static void testDML2(){
DmlDemo15.dmlInsertDemoCO1();
list<department__c> listdep = [select id, name__c from department__c];
system.assertEquals(1, listdep.size());
assert.areequal(1, listdep.size());
Assert.areEqual('Human Resource', listdep[0].name__c);
}

@istest
public static void testDML3() {

account acc = new account (name = 'acc test');
insert acc;
DmlDemo15.dmlUpdateDemo2();
account acc1 = [select id, name from account where id = :acc.id];


Assert.areEqual('Softinnovas Inc.', acc1.name);
    
}
@istest
public static void testDML4() {
department__c dept = new department__c (name__c = 'QA');
insert dept;
DmlDemo15.insertRelatedRecord2();
employee__c emp = [select id, name, first_name__c, last_name__c, department__c from employee__c where department__c= :dept.id ];
Assert.areEqual('Don', emp.first_name__c);
}
@istest
public static void testDML5()  {
    List<account> listAcc = new list<account>();
    for (Integer i = 0; i < 155; i++) {
        account ac = new account();
        ac.Name = 'test acc ' + i;
       
        //add account to list
        listAcc.add(ac);
    }

    //if list is not empty then only insert
    if (!listAcc.isEmpty()) {
        insert listAcc;//insert 155 accounts
    }
    test.startTest();
    DmlDemo15.bulkUpdateRight();
    test.stopTest();
    //assertion

    account acc = [select id, name from account limit 1];
    Assert.isTrue(acc.name.contains('v2'));
} 
}