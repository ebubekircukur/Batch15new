public class DummyDataCreation {
public static void highestOpp() {
List<Opportunity> oppList = [select id, name, description, amount from Opportunity where amount !=null order by amount desc limit 10];    
for(Opportunity eachOpp : oppList){
eachOpp.Description = 'This is one of the top 10 opps. Please work on this properly';
}
}
public static list<opportunity> createRecords(integer n,id accId){
    list<opportunity> oppList2= new list<opportunity>();
    if(n<=0){
        system.debug('Please tell us how many opportunities needs to be created');
    }else{
        account acc = [select id, name,AnnualRevenue from account where id=:accid limit 1];
    for(integer i=0 ; i<n ; i++){
        opportunity op = new opportunity();
    op.name=acc.name;
      op.closeDate=date.today().addYears(3);
      op.StageName='Prospecting';
    op.amount=acc.AnnualRevenue/n;
    op.accountId=acc.Id;
    oppList2.add(op);
    
    }
    insert oppList2;
    }
    
    return oppList2;
        }
    public static void accwithNoCon() {
    list<account> listAcc = [select id, name from account where id not in(select accountid from contact)];    
    list<contact> listcon = new list<contact>();
    for (account eachaccount : listAcc){
    contact c1 = new contact ();
    c1.firstname = 'Berdi';
    c1.lastname = eachaccount.name;
    c1.accountid = eachaccount.id;
    listcon.add(c1);
    }
insert listcon;

}
public static list<account> createaccount(integer n) {
list<account> listAcc = new list<account>();
for (integer i=0; i<n; i++){
account acc = new account();
acc.name = 'Burak';
acc.rating = 'Hot';
acc.phone = '134134';
acc.shippingcity = 'New York';
acc.BillingCity = 'New York';
listacc.add(acc);
}
insert listAcc;
return listAcc;
}
public static list<contact> createcontact(integer n, list<account> acclist) {
list<contact> listcont = new list<contact>();
for(account eachacc : acclist){


    for (integer i=0; i<n; i++){

        contact c1 = new contact();
        c1.accountid = eachacc.id;
        c1.firstname = 'Bekir';
        c1.lastname = 'Cukur';
        c1.phone = '31141334';
        c1.MailingCity = 'New Jersey';
        c1.MailingStreet = 'Chestnut Ave';
        c1.OtherCity = 'New York';
        listcont.add(c1);
        }    
}
insert listcont;
return listcont;
}
public static list<case> createcase(list<contact> contlist) {
list<case> caselist = new list<case>();
for(contact eachcont : contlist){
 case case1 = new case();
 case1.contactid =eachcont.id;
 case1.accountid = eachcont.accountid;
 case1.subject = 'Complain';
 case1.status = 'New';
 case1.Origin = 'Phone';
 caselist.add(case1);
}
 insert caselist;
 return caselist;   
}

}