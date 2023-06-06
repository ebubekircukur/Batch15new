
set<id> setIds = new set<id>();
list<account> lastcreatedaccount = [select id from account order by createddate desc limit 1];
for (account each : lastcreatedaccount){
setIds.add(each.id);
}
UpdateContactsNumberforAccountwithFuture.updatecontactsnumber(setIds);