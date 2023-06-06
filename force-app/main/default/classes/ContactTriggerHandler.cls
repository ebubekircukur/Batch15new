public class ContactTriggerHandler {
public static void ValidateContactUpdate1(list<contact> ctriggerNew, list<contact> ctriggerOld, map<id, contact> ctriggerNewMap, map<id, contact> ctriggerOldMap) {
    for (contact eachContact : ctriggernew){
    contact oldcontact = ctriggerOldMap.get(eachContact.id);
        
        
        if (oldcontact.leadsource == 'Partner Referral'){
            eachcontact.adderror('You cant update this record!');
        }
        }
}
}