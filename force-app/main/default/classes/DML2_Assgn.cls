public class DML2_Assgn {
public static void insert_dml() {
list<account> acclist = new list<account>();
for (integer i =1; i<6; i++){
account acc1 = new account();
acc1.name = 'Ebubekir Assignment '+(i);
acclist.add(acc1);
}    
insert acclist;
system.debug('Acc list is '+ acclist);
}
public static void updating_dml() {
account acc = new account();
acc.name = 'Account created';
insert acc;
acc.name = 'Account updated';
update acc;
}
}   