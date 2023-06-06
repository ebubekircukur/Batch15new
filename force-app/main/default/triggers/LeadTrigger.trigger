trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
if (trigger.isBefore && trigger.isInsert){
for (lead eachlead : trigger.new){
    system.debug('Each lead = '+ eachlead);
leadlist.add(eachlead);
}
}
if (trigger.isBefore && trigger.isUpdate){

    for (lead eachlead : trigger.new){
        system.debug('Each lead id = '+ eachlead.id+ 'each lead name = '+ eachlead.name + 'each lead description = '+ eachlead.Description);
        
    }
    }
}