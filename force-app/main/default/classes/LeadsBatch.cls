public class LeadsBatch implements database.Batchable<SObject> {

public Database.QueryLocator start(Database.BatchableContext bc){
database.QueryLocator leads = database.getQueryLocator([select id, description from lead]);
return leads;
}
public void execute(Database.BatchableContext bc, list<lead> listLeads){
list<lead> updatedlist = new list<lead>();

for (lead eachlead :listLeads){
    eachlead.Description = 'Updated by Scheduled batch at '+datetime.now();
    updatedlist.add(eachlead);
}
update updatedlist;    
}
public void finish(Database.BatchableContext bc){

}
}
