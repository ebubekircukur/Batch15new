public class soqlDemo {
    public static void accountSOQL1() {
    list<account> listAcc = [select id, name, phone, website from account];
    system.debug(listAcc);
    list<contact> listCon = [select id, name, phone from contact];
    system.debug(listCon);
    }
    public static void accountSOQLOneR(){
        account acc = [select id, name, phone, website from account order by createddate desc limit 1];
        system.debug(acc);
        string accountname = acc.Name;
        system.debug(accountname);  
        system.debug(acc.Website);  
    }

    public static void accountSOQL3() {
       list<account> listacc = [select id, name, phone, accountnumber from account order by createddate desc]; 
       for ( account eachaccount : listacc ){
    system.debug('each account record is '+eachaccount);
    string accName = eachaccount.Name;
    system.debug('each account name is '+accName);
    system.debug('each account phone is '+eachaccount.Phone);
    system.debug('each account number is '+eachaccount.AccountNumber);
    system.debug('================');
}  
    }
public static void accountSoqllFilter() {
    list<account> listAcc1= [select id, name, website from account where name = 'Lux'];
    system.debug('ListAcc1 '+listAcc1);
}
public static void projectFilter() {
    list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c = 'New'];
    system.debug(listSP);
    system.debug(listSP.size());
}
public static void projectSoqlFilter(string status) {
    list<salesforce_project__c> listSP = [select id, name, project_name__c, status__c, description__c from salesforce_project__c where status__c = :status];
    system.debug(listSP);
    system.debug(listSP.size());
}
}