public class Collections_Assignment {
 public static void listMethods(){
list <string> days = new list <string>{'Monday', 'Tuesday','Wednesday', 'Thursday','Friday', 'Saturday'};
days.add('Sunday');
system.debug(days);
list <string> days2 = new list <string>();
days2.addAll(days);
system.debug(days2);
boolean checkcontain = days2.contains('Tuesday');
system.debug('does day2 list contain Tuesday ===> '+checkcontain);
boolean checkequal = days.equals(days2);
system.debug('Does day list equal to day2 list ===> '+checkequal);
string get3rditem = days.get(2);
system.debug('3rd item of days list is '+get3rditem);
boolean checkempty = days.isEmpty();
system.debug('Is days list empty ===> '+checkempty);
integer indexofmethod = days.indexOf('Friday');
system.debug('Index of Friday is ====>'+ indexofmethod);
integer size = days.size();
system.debug('Days list size is ===> '+size);
days.sort();
system.debug('Sort of days list ==> ' + days );
days.remove(3);
system.debug('Days list after remove  ==> ' + days );
days.set(0, 'Weekend');
system.debug('After setting weekend as first index ====> '+days);
}

public static void setMethods(){
    set <string> setdays = new set <string>{'Monday', 'Tuesday','Wednesday', 'Thursday','Friday', 'Saturday'};
    setdays.add('Sunday');
    system.debug(setdays);
    set <string> setdays2 = new set <string>();
    setdays2.addAll(setdays);
    system.debug(setdays2);
    boolean checkcontain = setdays2.contains('Tuesday');
    system.debug('does set day 2 list contain Tuesday ===> '+checkcontain);
    boolean checkequal = setdays.equals(setdays2);
    system.debug('Does set days equal to set days 2  ===> '+checkequal);
    boolean checkempty = setdays.isEmpty();
    system.debug('Is set days empty ===> '+checkempty);
    integer size = setdays.size();
    system.debug('Set days size is ===> '+size);

    }

}

