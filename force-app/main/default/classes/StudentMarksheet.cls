public class StudentMarksheet {
String firstName;
String lastName;
Integer mathematics;
Integer english;
Integer chemistry;
static string schoolName;

public StudentMarksheet(){
schoolName = 'Salesforce Public School';
}
public void setfirstNamelastName(string firstName, string lastName){
this.firstName = firstName;
this.lastName = lastName;
}
public string getfirstNamelastName(){
    return this.firstName+' '+this.lastName;
}
public void setMarks(integer mathematics1, integer english1, integer chemistry1){
mathematics = mathematics1;
english = english1;
chemistry = chemistry1;
}
public void showMarksheet(){
system.debug('Student name is '+getfirstNamelastName());
system.debug('School name is '+schoolName);
system.debug('Mathematics is '+mathematics+ ' English is '+english+ ' Chemistry is '+chemistry);
integer sum = mathematics+english+chemistry;
if (sum >= 120){
    system.debug('You are passed');
}else {
system.debug('You need to study more');
 }
 system.debug('---------------');
}
}


