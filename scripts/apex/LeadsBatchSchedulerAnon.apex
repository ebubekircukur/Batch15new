LeadsBatchScheduler bc = new LeadsBatchScheduler();
string str = '0 0 6 * * ?';
system.schedule('LeadsBatch scheduled at 6am', str, bc);
