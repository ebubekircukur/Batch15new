trigger DepartmentTrigger on Department__c (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
DepartmentTriggerHandler.CreateDefaultEmployee(trigger.newmap.keyset());
}
}