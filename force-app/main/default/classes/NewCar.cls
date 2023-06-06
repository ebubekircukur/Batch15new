public class NewCar {
    Integer currentSpeed = 0;
    String carType='';
    String carName='';
public void startCar(String carType1, String carName1 ){
    carType = carType1;
    carName = carName1;

system.debug( carType +' '+carName);
}
public void Accelerate(integer x){
currentSpeed += x;
system.debug('Your current speed is '+currentSpeed);
}
public void Brake(integer y){
currentSpeed -= y;
if(currentSpeed<=0){
    system.debug('Your current speed is 0');
}
else {system.debug('Your current speed is '+currentSpeed);


}
}
public void stopCar(){
currentSpeed = 0;
system.debug('Your current speed is '+currentSpeed);
}
public void checkSpeed(){
    if (currentSpeed<=30){
        system.debug('City Mode');
    }
    else if(currentSpeed<=60){
        system.debug('Economy Mode');
    }
    else{
        system.debug('Sport Mode');
    }
}
}