public class listDemo {
public static void candidatesList(){
list<string> listC = new list <string>();
listC.add('MARK');
listC.add('bill');
listC.add('Jon');
listC.add('Kelly');
system.debug('list of candidates =>'+listC);
}
public static void randomIntegerList() {
list<integer> intList = new list<integer>();
intList.add(80);
intList.add(20);
intList.add(30);
intList.add(80);
intList.add(10);
intList.add(10);
intList.add(90);
system.debug(intList);
integer size = intList.size();
system.debug('list size is '+size);
integer int3 = intList.get(3);
integer int31 = intList[3];
system.debug('int 3 is '+int3);
system.debug('int 31 is '+int31);
}
public static string candidateList (integer i){
    list<string> listC = new list <string>();
    listC.add('MARK');
    listC.add('bill');
    listC.add('Jon');
    listC.add('Kelly');
    system.debug('list of candidates =>'+listC);
    
    string returnValue = '';
    integer size = listC.size();
    if (size > i && size >=0) {

    returnValue = listC.get(i);
    
    }
    else {  
        returnValue = 'No such value exist';
     }
     return returnValue;
    }
    public static void friendList(){
    list<string> friends = new list<string>();
    friends.add('Brown');
    friends.add('Raul');
    friends.add('Tony');
    friends.add('Perry');
    system.debug('before '+friends);
    friends.sort();
    system.debug('after '+friends);

    }
    
}