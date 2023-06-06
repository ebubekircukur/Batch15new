public class ContactQueableapex implements queueable {
    list<account> accList;
    public ContactQueableapex(list<account> accList) {
        this.accList = accList;
    }
    list<contact> contactlist = new list<contact>();
    public void execute(QueueableContext qc){
    for (account eachAcc : accList){
       contact c = new contact();
       c.firstname = 'Test';
       c.lastname = 'Test';
       c.AccountId = eachAcc.id;
       contactlist.add(c);
    }
    insert contactlist;
    }
}
    