public class AccountUpdateHelper {
@InvocableMethod
public static void updateAccountWebsite(list<id> accIds){


    list<account> accountToUpdate = new List<Account>();
    list<account> accList = [select id, name, website from account where id in :accIds];
    for (account eachAcc : accList){
        eachAcc.Website = 'www.softinnovas.com';
        accountToUpdate.add(eachAcc);
    }
    if(!accountToUpdate.isEmpty()){
        update accountToUpdate;
    }
}
}