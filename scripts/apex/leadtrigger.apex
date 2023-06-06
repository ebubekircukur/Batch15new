list<lead> leadlistcreate = new list<lead>();
for (integer i=0; i <5 ; i++){
lead newlead = new lead();
newlead.lastname = 'assingment lead';
newlead.company = 'hotel';
leadlistcreate.add(newlead);
}
insert leadlistcreate;

for (lead eachlead : leadlistcreate){
    eachlead.Description    = 'Elon';
}
update leadlistcreate;