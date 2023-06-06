@isTest
public class CalculatorTest {
@isTest
public static void testMethod1() {
Calculator c = new Calculator();
c.add(1.1, 2.2);    
}
@istest
private static void testAddMethod() {
Calculator c = new Calculator();
integer sum = c.add(5, 5);
system.assertEquals(10, sum);  //old way    
assert.areEqual(10, sum); //new way
}
@istest
public static void testAddMethod2() {
Calculator c = new Calculator();
integer sum = c.add(5, 10, 15);
assert.areEqual(30, sum);
}
@istest
private static void TestLeapyear() {
Calculator c = new Calculator();
boolean leapyear = c.leapYearCheck(date.today());
assert.areEqual(false, leapyear);    
    
}
}