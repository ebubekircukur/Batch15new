public class soqldemo4 {
public static void groupbyQuery() {
list<aggregateResult> result = [select country__c, COUNT(id), SUM(salary__C) from Employee__c group by country__c];    
for (aggregateResult ar : result){
    system.debug('country name is '+ ar.get('country__c'));
    system.debug('number of employees are '+ ar.get('expr0'));
    system.debug('total salary is  '+ ar.get('expr1'));
}
}
public static void accdynamicsoql1(string accfieldnames) {
string query = 'select';
query += accfieldnames;
query += ' from account';

system.debug('final query is : '+query);
list<account> listAcc = database.query(query);
for (account eachAcc : listAcc){
    system.debug(eachAcc);
}
}
}