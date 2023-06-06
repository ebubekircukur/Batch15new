public class DepartmentsBatch implements database.Batchable<sobject> {
  
    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('inside start method');
    Database.QueryLocator dep = Database.getQueryLocator([select id, number_of_employees__c, (select id from employees__r) from department__c]);
return dep; 
}

public void execute(Database.BatchableContext bc, list<department__c> listofDep){
    list<department__c> updatedep = new list<department__c>();
    for (department__c eachdep : listofDep){
        if(eachdep.employees__r != null){
    eachdep.number_of_employees__c = eachdep.employees__r.size();
    updatedep.add(eachdep);
}   
}
    update updatedep;

    
}
public void finish(Database.BatchableContext bc){
system.debug('Batch Over');
}
}