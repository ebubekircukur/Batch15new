public class ModernMaths {
public static void printFactors(integer num){

list<integer> list1 = new list<integer>();

    for (Integer i = 1; i <= num; i++) {
        integer remainder = math.mod(num, i);
        if(remainder == 0){
        list1.add(i);
        
 
    }
    }
    system.debug(list1);
}
}