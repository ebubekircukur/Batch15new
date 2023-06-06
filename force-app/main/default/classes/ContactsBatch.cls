public class ContactsBatch implements database.Batchable<sobject> {
  
        public Database.QueryLocator start(Database.BatchableContext bc){
   
        Database.QueryLocator con = Database.getQueryLocator([select id, name, description from contact]);
    return con;
    }
    public void execute(Database.BatchableContext bc, list<contact> listContacts){
        list<contact> updateCon = new list<contact>();
        for (contact eachcon : listContacts){
        eachcon.Description = 'Updated by batch';
        updateCon.add(eachcon);
        
    }
        update updateCon;
 
        
    }
    public void finish(Database.BatchableContext bc){
    system.debug('Batch Over');
    }
    }