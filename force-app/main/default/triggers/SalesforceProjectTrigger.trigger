trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {

    if (Trigger.isAfter && Trigger.isInsert) {
        //call future method
        system.debug('about to call future method');
        SalesforceProjectHandler.updateDescriptionFuture(trigger.newMap.keyset());
        //call handler method to insert default salesforce ticket.
        system.debug('just called future method');
        SalesforceProjectHandler.createDefaultTicket(Trigger.New);
        
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        //call method to validate project completion
        //SalesforceProjectHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
SalesforceProjectHandler.spcompletedstatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}