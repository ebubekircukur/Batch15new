public class dmldemo2 {
public static void insertRelatedRecord2() {
department__c dep = [select id from department__c order by createddate desc limit 1];
employee__c emp = new employee__c();
emp.first_name__c = 'Burak';
emp.last_name__c = 'Dogan';
emp.salary__c = 150000;
emp.department__c = dep.id;
emp.country__c = 'Turkiye';
insert emp;
system.debug(emp);
}

public static void soqlwrong() {
for (integer i=0; i<15; i++){
account acc = [select id, name from account limit 1];
system.debug(acc);
}    
}
public static void bulkinsertright() {
list<account> listacc = new list<account>();
for (integer i=0; 0< 155; i++){
    account ac = new account();
    ac.name = 'test acc'+i;
    listacc.add(ac);
}
if(!listacc.isEmpty()){
    insert listacc;
}

}
}