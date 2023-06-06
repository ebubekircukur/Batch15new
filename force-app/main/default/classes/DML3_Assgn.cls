public class DML3_Assgn {
public static void createBulkContacts() {
list<contact> contact = new list<contact>();
for (integer i=0; i<4; i++){
contact conc = new contact();
conc.FirstName = 'Mark';
conc.lastName = 'Ruffalo';
contact.add(conc);
}
for (integer i=0; i<3; i++){
    contact conc = new contact();
    conc.FirstName = 'Chris';
    conc.lastName = 'Hemsworth';
    contact.add(conc);
    }
for (integer i=0; i<3; i++){
        contact conc = new contact();
        conc.FirstName = 'Scarlett';
        conc.lastName = 'Johansson';
        contact.add(conc);
    }
insert contact;
}
public static integer updateBulkContacts(string lastName, string phoneNumber) {
integer updateBulkContactsnumber=0;
list<contact> conctactupdate = [select id, phone from contact where lastname = :lastName];
list<contact> phoneupdated =  new list<contact>();

for (contact eachconctact : conctactupdate){
eachconctact.phone = phoneNumber;
phoneupdated.add(eachconctact);
}    

update phoneupdated;

updateBulkContactsnumber = phoneupdated.size();
system.debug('Updated Bulk Contact List is number is '+ updateBulkContactsnumber);
return updateBulkContactsnumber;

}
}