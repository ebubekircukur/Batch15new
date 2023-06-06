public class Dog {
    String name;
    String color;
    Integer age;
    
    public dog(){
        age =1;
        checkage();
    }
 public dog(string nm, string clr, integer age1){
    name = nm;
    color= clr;
    age = age1;
    checkage();
 }
 public void checkage(){
    if (age>=0 && age<=1){
        system.debug('Puppy Dog');
    }
    else if (age<=3){
        system.debug('Young Dog');
    }
    else if (age<=5){
        system.debug('Adult Dog');
    } 
    else {
        system.debug('Old Dog');
    }

 }

}