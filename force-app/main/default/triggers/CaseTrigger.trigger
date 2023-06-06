trigger CaseTrigger on Case (before insert, before update,  after insert, after update) {
if(trigger.isBefore){
    system.debug('before insert case trigger ');
CaseTriggerHandler.recordcount += trigger.size;
    system.debug('number of records processed '+CaseTriggerHandler.recordcount);
CaseTriggerHandler.triggercount++;
system.debug('number of triggers processed '+CaseTriggerHandler.triggercount);
}
// if(trigger.isBefore && trigger.isInsert){
// CaseTriggerHandler.CaseOrigin(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
// }
// if(trigger.isAfter && trigger.isInsert){
// CaseTriggerHandler.CreateChildCase(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
// }


//     system.debug ('========STARTT !!!======');
// system.debug('We are in triggers');
// if(trigger.isBefore){
//     system.debug('We are in before triggers');   
//     if(trigger.isInsert){
//         system.debug('We are in before insert triggers');
//     }
//         if(trigger.isUpdate){
//             system.debug('We are in before update triggers');    
//         }
    
    
// }
// if(trigger.isAfter){
//     system.debug('We are in after triggers'); 
//     if (trigger.isInsert){
//         system.debug('We are in after insert triggers');
//     }   
//     if (trigger.isUpdate){
//         system.debug('We are in after update triggers');
//     }
// }
// system.debug ('========END !!!======');

}









