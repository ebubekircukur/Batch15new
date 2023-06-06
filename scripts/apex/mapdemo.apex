//mapdemo.mapStringInteger();
map <string, string> mapCC = new map <string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Germany', 'Euro');
mapCC.put('India', 'Rupees');
mapCC.put('India', 'Rupee');
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa', 'usd');
system.debug(mapCC);

string currUSA = mapCC.get('USA');
string currIndia = mapCC.get('India');
system.debug(currIndia);
string country = 'Turkiye';
string currTurkiye = mapcc.get(country);
system.debug(country+ ' currency is '+currTurkiye);

set <string> allcountry = mapCC.keySet();
system.debug('All countries ==>'+allcountry);
list <string> allcurr = mapCC.values();
system.debug('All countries currencies ==>'+allcurr);

for ( string eachcountry : allcountry){
    system.debug('Country is '+eachcountry);
    string eachcurrency = mapCC.get(eachcountry);
    system.debug('Country is '+eachcountry+' its currency is '+ eachcurrency);
    }