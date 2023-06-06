public class StringMethodsDemo {
public void stringMethod1(){
system.debug('practice string methods');
string sDec = 'learning string methods in apex language';
integer strLenght = sDec.length();
system.debug('length of string is ' + strLenght);

boolean checkSalesforce = sDec.contains('salesforce');
system.debug('Check if string contains ==> '+checkSalesforce);

boolean checkApex = sDec.contains('apex');
system.debug('Check if string contains ==> '+checkApex);

string upSdec= sDec.toUpperCase();
system.debug('Upper string ==> '+upSdec);
}  
public void stringMethod2(){
    string userName = '  Ebubekir   ';
    system.debug('actual lenght' +userName.length());
    userName = userName.trim();
    system.debug('after trim ' + userName );
    system.debug(userName.length());
    string userName2 = 'bekir';
    boolean checkNames = userName.equals(userName2);
    system.debug('if username equals to username2 ==>' + checkNames);

    boolean checkNames2 = username.equals('beko');
    system.debug('if username equals to beko  '+ checkNames2);

    boolean checkNames3 = username2.equalsIgnoreCase('BEKIR');
    system.debug('check if username is bekir with ingorecase '+checkNames3);

}
} 3