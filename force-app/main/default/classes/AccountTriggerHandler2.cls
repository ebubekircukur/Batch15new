public  class AccountTriggerHandler2 {
public static void UpdateAccountValidation(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, map<id,account> accTriggerOldMap) {
set<id> accIdset = new   set<id>();
for (account EachAcc : accTriggerNew){
if(EachAcc.rating == 'HOT'){    
accIdset.add(EachAcc.id);
}
}
list<account> accList = [select id,name,rating, (SELECT id, name,StageName from Opportunities where isclosed = false) from account where id in :accIdset];
for (account eachAcc2 : accList){
    if (eachAcc2.Opportunities.size()< 3){
    accTriggerNewMap.get(eachAcc2.id).addError('This account can not be hot.okay?');
    }
}
}
public static void UpdateAnnualRevenue(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, map<id,account> accTriggerOldMap) {
for (account eachacc: accTriggerNew){
decimal oldannual = accTriggerNewMap.get(eachacc.id).AnnualRevenue;
decimal newannual = eachacc.AnnualRevenue;
if (oldannual==null){
oldannual=0;
}
if (newannual == null){
newannual = 0;
}
if(newannual<oldannual&&newannual != oldannual){
eachacc.AnnualRevenue.addError('Annual revenue for an account can not be reduced!');
}
}
    
}
public static void CreateAccountContact(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, map<id,account> accTriggerOldMap) {
list<contact> listcont = new list<contact>();
for (account acc : accTriggerNew){
contact c = new contact();
c.accountid = acc.id;
c.lastname = acc.name;
listcont.add(c);
}
if(!listcont.isEmpty()){
    insert listcont;
}

}
public static void UpdateAccount(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, map<id,account> accTriggerOldMap) {
    set<id> accIdset = new   set<id>();
    for (account EachAcc : accTriggerNew){
accIdset.add(EachAcc.id);
}
List<Opportunity> listOpp = [select id,name, stageName from Opportunity where accountid in :accIdset and isClosed = false];

for (Opportunity eachopp : listOpp){
    eachopp.StageName = 'Closed Lost';

}
update listopp;
}
public static void UpdateContactPhone(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, map<id,account> accTriggerOldMap) {
    set<id> accIdset = new   set<id>();
    for (account EachAcc : accTriggerNew){
if (EachAcc.phone != accTriggerOldMap.get(EachAcc.id).phone){
    accIdset.add(EachAcc.id);
}
list<contact> listcont = [select id,name, otherphone, mobilephone,accountid from contact where accountid in :accIdset];
for (contact eachcont : listcont){
    eachcont.OtherPhone = accTriggerOldMap.get(eachcont.accountid).phone;
    eachcont.MobilePhone = accTriggernewMap.get(eachcont.accountid).phone;
}
update listcont;
}
}
}