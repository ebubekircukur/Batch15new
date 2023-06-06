public class ListExtra_Assignment {
public static void schoolsList(string Medium){
list<string> allschoolsincity = new list<string>{
    'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'
};
list<string> newschool = new list<string>();
for ( string eachschool : allschoolsincity){
    if(eachschool.contains(medium)){
newschool.add(eachschool);

    }
}
system.debug(newschool);
}


}