@istest
public class testSoqlParentChildAssignment {
@TestSetup
static void makeData(){
account acc = new account();
acc.name = 'Softii';
insert acc;
list<contact> contlist = new list<contact>();
for (integer i=0; i<10; i++){
contact c = new contact();
c.firstname ='Vitap';
c.lastname = 'King';
c.AccountId = acc.id;
contlist.add(c);
}
insert contlist;    
}
@isTest
public static void testcontactaccount(){
SoqlParentChildAssignment.printContactAccounts();    
}
@isTest
public static void testcontactaccount2(){
SoqlParentChildAssignment.printAccountContacts();    
}
}