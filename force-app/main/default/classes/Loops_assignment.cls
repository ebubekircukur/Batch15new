public class Loops_assignment {
public void whileLoopMethod(integer n){
integer i=0;

while (i<n){
    i++;
    system.debug(i);
}
}
public void printEven(){
    
for(integer i=1; i<=100; i++){
    integer evenNumbers=i;
integer remainder=math.mod(evenNumbers, 2);
if (remainder==0) {
    system.debug(evenNumbers);  
}

}
}
public integer printPower(integer n){
integer result=1;
for(integer i=1; i<=n; i++){
result *=n;
}
system.debug(result);
return result;
}
}