public class String_Assignment {
public void localS(){
String localString = 'Thanks for the session on the string';
system.debug(localString);
Integer lengoflocalstring = localString.length();
system.debug(lengoflocalstring);
String convertLocalstring = localString.toUpperCase();
system.debug(convertLocalstring);
Boolean checkLocalstring = localString.contains('session');
system.debug(checkLocalstring);
Boolean checkLocalstring2 = localString.contains('sessions');
system.debug(checkLocalstring2);
Boolean checkLocalstring3 =localString.contains('SESSION');
system.debug(checkLocalstring3);
    }
}