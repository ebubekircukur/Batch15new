public class mapOrnekler {
public static void sehirSicakliklari(){

map<string, list<decimal>> citiesofhot = new map<string,list<decimal>>();
List<decimal> istanbulofhot = new list<decimal>{22.5,11.1,33.1,4.1,6.6,9.9,4.4};
citiesofhot.put('Istanbul', istanbulofhot);
List<decimal> ankaraofhot = new list<decimal>{42.5,31.1,33.1,34.1,63.6,39.9,34.4};
citiesofhot.put('Ankara', ankaraofhot);
List<decimal> izmireofhot = new list<decimal>{2.5,1.1,3.1,4.1,3.6,9.9,4.4};
citiesofhot.put('Izmir', izmireofhot);
List<decimal> nyofhot = new list<decimal>{12.5,11.1,13.1,14.1,13.6,19.9,14.4};
citiesofhot.put('New York', nyofhot);
List<decimal> laofhot = new list<decimal>{22.5,21.1,23.1,24.1,23.6,29.9,24.4};
citiesofhot.put('Los Angelas', laofhot);
system.debug('Map ==> ' + citiesofhot);
map<string, decimal> maportSicaklik = new map<string, decimal>();

for (string city : citiesofhot.keySet()){
    system.debug(city);
    system.debug(citiesofhot.get(city));
    decimal sum=0;
    for (decimal item : citiesofhot.get(city) ){
        sum += item;

    }
    decimal average = sum/(citiesofhot.get(city).size());
    maportSicaklik.put(city, average.setScale(2));
}
system.debug('map ortalama sicaklik ===' +maportSicaklik);

set<string> less10 = new set<string>();
set<string> more10 = new set<string>();
for (string city : maportSicaklik.keySet()){
    if (maportSicaklik.get(city)>10) {
        more10.add(city);
    } else {
        less10.add(city);
    }
}
system.debug('sicaklik ortalamasi 10 uzeri sehirler ==> '+more10);
system.debug('sicaklik ortalamasi 10 asagi sehirler ==> '+less10);
}
}