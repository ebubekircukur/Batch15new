@isTest
public class AssetTriggerHandlerTest {
    @istest
    private static void testAssetTriggerHandler() {
        account acc = new account();
        acc.name = 'Acc Name';
        insert acc;
        contact c = new contact();
        c.FirstName = 'Vitap';
        c.LastName = 'King';
        c.AccountId = acc.id;
        insert c;
    list<asset> listasset= new list<asset>();
    for(integer i = 0; i<200; i++){
    asset s = new asset();
    s.name = 'Asset '+i;
    s.contactid = c.id;
    s.AccountId = acc.id;
    listasset.add(s);
    }
    asset s1 = new asset();
    s1.name = 'Asset with shipped';
    s1.contactid = c.id;
    s1.AccountId = acc.id;
    s1.status = 'Shipped';
    listasset.add(s1);
    asset s2 = new asset();
    s2.name = 'Asset with installed';
    s2.contactid = c.id;
    s2.AccountId = acc.id;
    s2.status = 'Installed';
    listasset.add(s2);
    
    insert listasset;
    list <asset> allassets = [select id, name, description from asset];
    allassets[5].Status = 'Shipped';
    allassets[6].Status = 'Installed';
    update allassets;
    

    }
    
    }
