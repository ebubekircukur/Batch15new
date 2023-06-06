public class setdemo {
public static void citySet(){
set <string> cities = new set <string>();
cities.add('Tokyo');
cities.add('Berlin');
cities.add('Tokyo');
cities.add('TOKYO');
cities.add('Nairobi');
cities.add('BerliN');
system.debug('set of cities ==> '+cities);

}
public static void randomintegerset(){

set <integer> randomnumbers = new set <integer>();
randomnumbers.add(15);
randomnumbers.add(25);
randomnumbers.add(35);
randomnumbers.add(45);
randomnumbers.add(15);
randomnumbers.add(25);
system.debug('set of random numbers ==> '+randomnumbers);
}
public static void setfromlist(){

list <integer> li = new list <integer>{5,10,15,22,33,44,55,66};
system.debug('LIST OF INTEGER ==> '+li);

set <integer> li1 = new set<integer>();
li1.addAll(li);
system.debug('li1 integer ==> ' + li1);
list <integer> newli = new list <integer>();
newli.addAll(li1);
system.debug('Duplicated list ==> ' +newli);
}
public static void capitalized() {
    set <string> cities = new set <string>();
    cities.add('Tokyo');
    cities.add('Berlin');
    cities.add('Tokyo');
    cities.add('TOKYO');
    cities.add('Nairobi');
    cities.add('BerliN');
    system.debug('set of cities ==> '+cities);

    set <string> citiesincaps = new set <string>();

    for (string eachcity : cities){
        string temp = eachcity.toUpperCase();
        citiesincaps.add(temp);
    }
   
    system.debug(citiesincaps);
}

public static set<string> upperCaseSet(set<string> s1){
    set<string> s1InCaps = new set<string>();
    for (string eachStr : s1) {
        string temp = eachStr.toUpperCase();
        //add uppercase string in new set.
        s1InCaps.add(temp);
        s1InCaps.add(eachStr.toUpperCase());
    }
    //return new set with upper case strings
    return s1InCaps;
}

}