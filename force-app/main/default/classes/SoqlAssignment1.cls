public class SoqlAssignment1 {
public static void topEmployees() {
list<employee__c> top5employeelist = [select name, id, first_name__c, last_name__c, salary__c from employee__c order by salary__c desc limit 5];

for (employee__c eachemp : top5employeelist){
system.debug('Top 5 Employee name is '+ eachemp.first_name__c+' '+ eachemp.last_name__c+' salary is '+ eachemp.salary__c);
}
}
public static void mostPopulatedCountry() {
aggregateresult mostpopcountry = [select count(id), country__c from employee__c group by country__c order by count(id) desc limit 1];

  system.debug('Most populated country is '+mostpopcountry.get('country__c'));
}
}