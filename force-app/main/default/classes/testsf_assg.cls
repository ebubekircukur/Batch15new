@istest
public class testsf_assg {
@istest
public static void testInsertList(){
sf_assg.insertsf();
list<Salesforce_Project__c> insertedlist = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c = 'Phone23'];
integer sizeoflist = insertedlist.size();   
Assert.areEqual(10, sizeoflist);
}
@istest
public static void testUpdate() {
sf_assg.updatesf();
list<Salesforce_Project__c> insertedlist1 = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c = 'Phone2'];
integer sizeoflist1 = insertedlist1.size();
Assert.areEqual(1,sizeoflist1);

}
}