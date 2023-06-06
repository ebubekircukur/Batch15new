public class foreachloopagain {
public static void printCountryforeach(){
    set<string> c = new set <string>{
        'Germany', 'Phillipines', 'Nigeria', 'Mexico', 'Canada', 'United Kingtom', 'United States'
    };
    set<string> c2 = new set<string>();
    for (string eachcountry : c ){
        system.debug(eachcountry);
        integer len = eachcountry.length();
        if (len > 8 ){
            c2.add(eachcountry);
        }
    }
    system.debug('Long length countries == > '+ c2);
}
}