list<account> listAcc = [select id, name from account where Active__c = 'Yes'];
ContactQueableapex cq = new ContactQueableapex(listAcc);
system.enqueueJob(cq);
