public class ContactHandlerforRollUp {
public static void UpdateContactNumberforAccount(list<contact> ctriggerNew, list<contact> ctriggerOld, map<id, contact> ctriggerNewMap, map<id, contact> ctriggerOldMap){
    set<id> accId = new set<id>();
    for (contact eachCon : ctriggerNew) {
        accId.add(eachCon.accountId);
    }
    list<account> accList = [select id,name,number_of_contacts__c,(select id,name from contacts)from account where id in :accId ];
    
        List<account> updateAcc = new list<account>();
    
    for (account eachAcc : accList) {
       account newAcc = new account(id = eachAcc.id, number_of_contacts__c=eachAcc.contacts.size());
       updateAcc.add(newAcc);
       
    }
    update updateAcc;
    }
    public static void UpdateContactNumberforAccount2(list<contact> ctriggerNew, list<contact> ctriggerOld, map<id, contact> ctriggerNewMap, map<id, contact> ctriggerOldMap){
        set<id> accId = new set<id>();
        for (contact eachCon : ctriggerOld) {
            accId.add(eachCon.accountId);
        }
       
        
        list<account> accList = [select id,name,number_of_contacts__c,(select id,name from contacts)from account where id in :accId ];
        
            List<account> updateAcc = new list<account>();
        
        for (account eachAcc : accList) {
           account newAcc = new account(id = eachAcc.id, number_of_contacts__c=eachAcc.contacts.size());
           updateAcc.add(newAcc);
           
        }
        update updateAcc;
        }
        
        }
    
    