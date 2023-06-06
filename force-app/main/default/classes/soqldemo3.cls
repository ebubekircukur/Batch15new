public class soqldemo3 {
public static void oppAccQery() {
List<Opportunity> listOpp = [select id, name, amount, account.name, account.industry from Opportunity where account.industry = 'Energy']; 

for (Opportunity eachopp : listOpp){
    system.debug('Opp name is '+ eachopp.Name+', opp amount is '+ eachopp.Amount);
    system.debug('account name is '+eachopp.Account.Name+ 'industry is '+ eachopp.Account.Industry);
}
}
public static void accContactQuery() {
    list<account> listAcc = [select id, name, website, (select name, email from Contacts) from account];
    //each account name
        //all its contact name and email
        //if no contact, no contact found

    for (account eachAcc : listAcc) {
        system.debug('each acc is ' + eachAcc.Name);
        list<contact> accContacts = eachAcc.Contacts;
        if (!accContacts.isEmpty()) {
            system.debug(eachAcc.Name + ' account has ' + accContacts.size() + ' contacts');
            for (contact eachContact : accContacts) {
                system.debug('contact name is ' + eachContact.Name + ', email is ' + eachContact.Email );
            }
        } else {
            system.debug('*** NO contact found for this account ***');
        }
        system.debug('-----');
        
    }
}
public static void deptdetails() {
list<department__c> listDept = [SELECT Name__c, Head_Of_Department__c,
(select first_name__c, last_name__c, country__c, salary__c from employees__r), Id, Name FROM Department__c];
decimal totalsalary = 0;
for (department__c eachdept : listDept){
    system.debug('Dept name is '+eachdept.name__c);
    list<Employee__c> listEmp = eachdept.employees__r;
    decimal deptsalary = 0;
    for (Employee__c eachEmp : listEmp){
        system.debug('Name is '+eachEmp.first_name__c+ ' '+ eachEmp.last_name__c+ 'country is '+ eachEmp.country__c);

        deptsalary += eachEmp.salary__c;
        totalsalary += eachEmp.salary__c;
    }
    system.debug('Each department salary is '+ deptsalary);
}
system.debug('Total salary is '+ totalsalary);
}
}