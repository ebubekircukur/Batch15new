public class EmployeeTriggerHandler {
public static void UpdateJoinDate(list<employee__c> empTriggerNew) {
    if (trigger.isInsert || trigger.isupdate){
    for (Employee__c eachemp : empTriggerNew){
       if( eachemp.JoinDate__c == null){
        eachemp.JoinDate__c = Date.today();
        }
        }    
}
}
}