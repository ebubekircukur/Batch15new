public class SOQL_Assignment {
public static void soql_WhereClause() {
    list<contact> lstcontact = [select id, name from contact where name like 'a%'];
    system.debug('Size of contacts ==> '+lstcontact.size());
}
public static void soql_FromMethod() {
    list<contact> lstcontact = [select lastname, phone from contact];
    for (contact eachcontact : lstcontact){

        system.debug('Each contacts last name is '+eachcontact.LastName);
        system.debug('Each contacts phone number is '+eachcontact.Phone);
    }
}
}