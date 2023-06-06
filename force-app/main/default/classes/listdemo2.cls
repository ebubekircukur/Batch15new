public class listdemo2 {
public static void iterateList(){
    list<integer> intList = new list<integer>();
intList.add(80);
intList.add(20);
intList.add(22);
intList.add(20);
intList.add(10);
intList.add(10);
intList.add(33);
intList.add(20);
intList.add(30);
intList.add(44);
intList.add(10);
intList.add(10);

system.debug(intList);

for (integer eachNumber : intList){
    system.debug(eachNumber);
}
for (integer eachNumber : intList){
    system.debug('5 x '+eachNumber+' = ' + 5*eachNumber);
}
}
public static integer add(List<integer> l1){
        integer sum = 0;
        system.debug(l1);
        for (integer eachNum : l1) {
          sum += eachNum;
        }
        return sum;
   }
   public static void iteratelistString (){
    list<string> l2 = new list<string> {'list', 'set', 'map', 'array'};
    system.debug(l2);

    for(string eachstring : l2){
    system.debug(eachstring+ ' its lenght is '+eachstring.length());
    }
   }
   public static string add1(list<string> strList){
    string sum='';
   for (string liststring : strList){
    sum +=liststring+ ' || ';

   }
  
   return sum;
}
public static void iterateListString99() {
    list<string> ls = new list<string> {'list', 'set', 'map', 'array'};
    ls.add('methods');
    ls.add('constructor');

    list<string> newLS = new list<string>();

    //add eachString - length in the same list
         //ex: list
         //    list - 4
         //    set
         //    set - 3
    //we cannot modify(add or remove elements) in the LIST we are using in FOR EACH LOOP
    for (string eachStr : ls) {
         string temp = eachStr + ' - ' + eachStr.length();
         newLS.add(eachStr);
         newLS.add(temp);
    }
    system.debug(newLS);
  }
}