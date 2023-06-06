public class Decimal_Assignment {
public void decimalMethods(){
    string s1 = '123.456789';
    decimal d1 = decimal.valueOf(s1);
    decimal d2 = d1.setScale(2, RoundingMode.DOWN);
    system.debug('s1 is '+s1);
    system.debug('d1 is '+d1);
    system.debug('d2 is '+d2);
}
}