@isTest
public class DepartmentTriggerHandlerTest {
@isTest
private static void testFuture1() {
list<department__c> listDep = new list<department__c>{
new department__c(name__c = 'TEST'),
new department__c(name__c = 'Trigger'),
new department__c(name__c = 'Soql'),
new department__c(name__c = 'Dml')
};
test.startTest();
insert listDep;
test.stopTest();
List<employee__c> listEmp = [select id, first_name__c from employee__c];
for (employee__c  e : listEmp){
assert.areEqual('Richard', e.first_name__c);
}
}
}