trigger ContactTrigger on Contact (before insert, before update, after insert, after update,before delete, after delete, after undelete) {
if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
ContactHandlerforRollUp.UpdateContactNumberforAccount(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
}
if(trigger.isUndelete){
ContactHandlerforRollUp.UpdateContactNumberforAccount2(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
}
}
// if (trigger.isBefore && trigger.isUpdate){
// ContactTriggerHandler.ValidateContactUpdate1(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
// }

    // if(trigger.isBefore){
    // system.debug('We are in before triggers.');
    //     if(trigger.isInsert){
    //     system.debug('Before insert trigger called');
    // }
    //     if(trigger.isUpdate){
    //     system.debug('Before update trigger called');
    // }
    // }
   
    // if(trigger.isAfter){
    // system.debug('We are in after triggers.');
    //     if(trigger.isInsert){
    //         system.debug('After insert trigger called');
    // }
    //         if(trigger.isUpdate){
    //         system.debug('After update trigger called');
    // }
    // }