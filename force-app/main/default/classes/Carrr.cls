public class Carrr {
string CarNumber;
public string name;
public integer mfgYear;
public string color;
decimal price;

public void details(){
    system.debug('Car number is '+CarNumber);
    system.debug('Car name is '+name);
    system.debug('mfg year is '+mfgYear);
    system.debug('Color of car is '+color);
    system.debug('Price of car is '+price);

}
public Carrr(){
    mfgYear = 2023;
    system.debug('New car is created, constractor called automatically');
}
public carrr(string nm){
    name = nm;
    mfgYear = 2023;
}
public carrr(string nm, string carnum, string clr, integer yr, decimal pc){
    name = nm;
    CarNumber = carnum;
    color = clr;
    mfgYear = yr;
    price = pc;
    details();
}
public void printCarAge(){
    integer currentYear= date.today().year();
    system.debug('Car age is '+(currentYear-mfgYear));
}

}