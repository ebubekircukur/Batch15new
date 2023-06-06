trigger EmployeeTrigger on Employee__c (before insert,after insert, after update, before update) {
if(trigger.isBefore){
   EmployeeTriggerHandler.UpdateJoinDate(Trigger.New);
}
}