public  class Trigger_Map {
public id InsertSF_Project() {
salesforce_project__c sp = new salesforce_project__c();
sp.project_name__c = 'Create a record';
insert sp;
return sp.id;
}
public void UpdateSF_Project(id recordid, string projectname) {
salesforce_project__c sp = [select id,project_name__c from salesforce_project__c where id = :recordid];
sp.project_name__c = projectname;
update sp;    
}
}