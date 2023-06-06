public class AccountsBatch implements database.Batchable<sobject>, database.stateful {
integer countRecords =0;    
    public Database.QueryLocator start(Database.BatchableContext bc){
system.debug('Batch STARTED');
    Database.QueryLocator acc = Database.getQueryLocator([select id, name, description, active__c from account]);
return acc;
}
public void execute(Database.BatchableContext bc, list<account> listAcc){
    list<account> updateAcc = new list<account>();
    for (account ac : listAcc){
    if(ac.active__c != 'No'){
    ac.Description += '..Updated via batch';
    updateAcc.add(ac);
    }
}
    update updateAcc;
    countRecords += updateAcc.size();
system.debug('Record Updated in this chunk is '+updateAcc.size());
system.debug('Total records uppdated till now '+ countRecords);
    
}
public void finish(Database.BatchableContext bc){
system.debug('BATCH PROCESSED. ENJOY. ');
system.debug('Total records uppdated till now '+ countRecords);
}
}