@istest
public class soqlDemo15test {
@TestSetup
static void makeData(){
list <account> listacc = new list<account>();
for(integer i=0; i<15; i++){
account acc = new account(name='test acc '+i, Industry='energy');
listacc.add(acc);    
}
insert listacc;
list <Opportunity> listopp = new list<Opportunity>();
for(integer i=0; i<30; i++){
    Opportunity opp = new Opportunity(name = 'test opp', StageName='New',CloseDate=date.today(), amount = 50000, AccountId = listacc[0].id);

listopp.add(opp);    
}
insert listopp;

}
@istest
static void testSoql1(){
soqlDemo15.oppAccQuery(); 
list<account> allAcc = [select id, name, industry from account];
for (account eachAcc : allAcc){
    eachAcc.Industry = 'Finance';
}
update allAcc;
}
@istest
static void testSoql2(){
soqlDemo15.accContactQuery();

}
}