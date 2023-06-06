public class SalesforceProjectHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        //create list<st>
        list<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = newSP.Id; //relationship field
            listST.add(st);
        }
        if (!listST.isEmpty()) {
            insert listST;
        }
    }

    public static void validate1(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, Map<id, Salesforce_Project__c> spTriggerNewMap,Map<id, Salesforce_Project__c> spTriggerOldMap ) {
        //create a set of id of SP
            //add SP for which we have updated status field and updated to completed
        set<id> setSPid = new set<id>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            if (newSP.Status__c != spTriggerOldMap.get(newSP.Id).status__c && newSP.Status__c == 'Completed') {
                setSPid.add(newSP.Id);
            }
        }
        //get all the tickets of all the SP(status is completed) and where ticket's status is not completed
        List<Salesforce_Ticket__c> listST = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :setSPid and status__c != 'Completed'];

        //for each ticket
            //get project id from newMap
                //add error
        for (Salesforce_Ticket__c eachST : listST) {
            salesforce_project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot complete project because all its tickets are NOT completed. Try again later.');
        }
    }
// pass salesforce project id in method

    @future
    public static void updateDescriptionFuture(set<id> spIds){
    // fetch all salesforce project using project ids via soql
    list<salesforce_project__c> listSP = [select id, name, description__c from salesforce_project__c where id in :spIds];
    for (salesforce_project__c eachsp : listSP){
    eachsp.description__c = 'Updated from future.OK?';

    }
    update listSP;
    //update description for all projects
    }
    public static void spcompletedstatus(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, Map<id, Salesforce_Project__c> spTriggerNewMap,Map<id, Salesforce_Project__c> spTriggerOldMap) {
        set<id> setSPid = new set<id>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
        if (newSP.status__c == 'Completed' &&  spTriggerOldMap.get(newSP.id).status__c != 'Completed'){
        setSPid.add(newSP.id);
        }
        }
        if(!setSPid.isEmpty()){
            //call future method\
            completeTickets(setSPid);
        }    
    }
    @future
    public static void completeTickets(set<id> setSPid) {
    list<salesforce_ticket__c> listST = [select id, status__c, salesforce_project__c from salesforce_ticket__c where salesforce_project__c in :setSPid and status__c != 'Completed' ];   
   for (salesforce_ticket__c eachST : listST){
eachST.status__c = 'Completed';
   }
   update listST;
}
}