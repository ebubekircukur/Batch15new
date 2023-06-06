public class MapDemoAgain {
    public static void printMap1() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);
        

        
        //get value from key
        //CANNOT get KEY from VALUE
        integer rollNo = 1011;
        string studentName = map1.get(rollNo);
        system.debug('student name for 1011 is ' + studentName);


        integer rollNo2 = 1055;
        //print student name if rollNo2 is present, else print
        //map1.containsKey(rollNo2) -> true or false. IT does not return the value
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + ' student name is ' + map1.get(rollNo2));
        } else {
            system.debug('No such roll no is present in our student records');
        }
    }
}