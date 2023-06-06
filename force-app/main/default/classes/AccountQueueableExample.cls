public class AccountQueueableExample implements queueable {
    list<account> accList;
    public AccountQueueableExample(list<account> accList) {
        this.accList = accList;
    }
    public void execute(QueueableContext qc){
    for (account eachAcc : accList){
        eachAcc.name += '--SI';

    }
    update acclist;
    }
}
    