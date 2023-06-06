public class mapdemo {
    public static void mapStringInteger(){
    map<string, integer> map1 = new map<string, integer>();

    map1.put('one', 101);
    map1.put('two', 202);
    map1.put('three', 303);
    map1.put('one', 1001);
    map1.put('four', 1001);
    system.debug(map1);
}
}