public class ExceptionDemo {
public static void demo1(string str) {    


try {
    string str2 = str.toUpperCase();
    system.debug('str2 is '+str2);   
} catch (NullPointerException nullEX) {
    system.debug('str is null so we cannot convert to uppercase');
    system.debug('exception = '+nullEX);  
}
system.debug('code completed');
}
}