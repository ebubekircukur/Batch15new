public class mapdemo2 {
public static void mapExample2() {
    
    map<string, Decimal> map2 = new map<string, Decimal>();
    map2.put('apple', 5.5);
    map2.put('pen', 235.25);
    map2.put('shirt', 5565.55);
    map2.put('laptop', 555.52);
    system.debug('Map2 is '+map2);

map<string, decimal> higher = new map<string, decimal>();
map<string, decimal> lower = new map<string, decimal>();

set<string> allItems = map2.keySet();

for (string eachitem : allItems){
decimal eachprice = map2.get(eachitem);
if (eachprice > 100){
    higher.put(eachitem, eachprice);
    system.debug('higher =='+ eachitem+ '---> '+eachprice);
}else {
        lower.put(eachitem, eachprice);
        system.debug('lower =='+ eachitem+ '---> '+eachprice); 
    }
}
system.debug('higher == '+higher);
system.debug('lower == '+lower);
}

public static string retrieveMonth(integer m){

string month = '';

map<integer, string> monthMap = new map<integer, string>{1=> 'January', 2=> 'February'};
monthMap.put(3, 'March');
monthMap.put(4, 'April');
monthMap.put(5, 'May');
monthMap.put(6, 'June');
monthMap.put(7, 'July');
monthMap.put(8, 'August');
monthMap.put(9, 'September');
monthMap.put(10, 'October');
monthMap.put(11, 'Novermber');
monthMap.put(12, 'December');


boolean keyexist = monthmap.containskey(m); 
if(keyexist){
    month = monthMap.get(m);
}
else {
    month = 'No such months exists. Please behave';
}
return month;
}
}

