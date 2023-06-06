public class LeadsBatchScheduler implements Schedulable {

    public void execute(SchedulableContext bc){
        LeadsBatch lb = new LeadsBatch();
        database.executeBatch(lb, 10);
}
}