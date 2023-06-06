public class DepartmentTriggerHandler {
@future
public static void CreateDefaultEmployee(set<id> setIds) {
list<Employee__c> listEmp = new list<Employee__c>();
for(id eachid : setIds){
Employee__c e = new Employee__c(first_name__c = 'Richard', last_name__c = 'King', department__c = eachid, joindate__c = date.today());
listEmp.add(e);
}
insert listEmp;
}
}   