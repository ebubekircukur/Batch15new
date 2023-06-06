public class MethodsDemo {
public void WelcomeMessage(){
    system.debug('Welcome to the jungle of apex');

}
public void samplePrintMessage(string message){
    system.debug(message);
}
public void newMessage(string name){
system.debug('Hi '+name+ ' Welcome to jungle of apex');
}
public string returnMessage(string name){
    system.debug('inside returnMessage method');
    string str = 'Hey '+name+', nice to meet you buddy';
    return str;
}
}