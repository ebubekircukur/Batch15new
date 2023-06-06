@istest
public class AssetTriggerTest {
@isTest
private static void testAssetTrigger1() {
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

insert listasset;
list <asset> allassets = [select id, name from asset];
allassets[0].name = 'Updated asset name';
update allassets;
Assert.areEqual(200, allassets.size());
assert.isTrue(allassets[0].name.contains('Updated asset name'));
}
}