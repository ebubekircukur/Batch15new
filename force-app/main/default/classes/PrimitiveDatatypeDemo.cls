public class PrimitiveDatatypeDemo {
public void print1(){
    string batchName = 'Batch 999';
    integer totalCandidates = 54;
    boolean isAdminCompleted = true;

    string batchDescription = batchName + ' has ' + totalCandidates + ' candidates';
    System.debug(batchDescription);
system.debug('isAdminCompleted => ' + isAdminCompleted);
}
public void print2(){
    Decimal d1 = 755.55;    
    system.debug('d1 is '+ d1);
    long l1 =34114311231L;
    system.debug(l1);
    Double dd1 = 34141231243.213;
    System.debug('dd1 ' + dd1);

    id accId = '0013x00002RfjFyAAJ';
    system.debug('Acc id is '+accId);
    object obj1= 99;
    object obj2 = 'assign string to object';
    object obj3 = true;
    object obj4 = l1;
    object obj5 = accId;
    system.debug(obj1);
    system.debug(obj2);
    system.debug(obj3);
    system.debug(obj4);
    system.debug(obj5);
}
}