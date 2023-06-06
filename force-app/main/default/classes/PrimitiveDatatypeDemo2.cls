public class PrimitiveDatatypeDemo2 {
public void printNewDate(){
    system.debug('create new data variable');
date newDate1 = Date.newInstance(1992, 4, 15);
system.debug(newDate1);
date newDate2 = Date.newInstance(2020, 3, 14);
system.debug(newDate2);
date todayDate = date.today();
system.debug('Today\'s date is '+todayDate);

}
public void printNewTime(){
    time myTime1 = time.newInstance(11, 10, 30, 50);
    system.debug(myTime1);
    time myTime2 = time.newInstance(21, 12, 15, 40);
    system.debug(myTime2);
    }
public void printNewdatetime(){
    date newDate1 = Date.newInstance(1992, 4, 15);
    time myTime1 = time.newInstance(11, 10, 30, 50);
    datetime dt1 = datetime.newInstance(newDate1, myTime1);
    system.debug('dt1 is '+ dt1);
    datetime dt2 = datetime.newInstance(2022, 11, 3);
    system.debug('dt2 is '+dt2);
    datetime dt3 = datetime.newInstanceGmt(2022, 3, 12, 18, 30, 00);
    system.debug('dt3 is '+ dt3);
    datetime dt4 = datetime.now();
    system.debug('dt4 is '+dt4);

}
public void printNewdatetime2(){

    long longTime = 3323324253424l;
    datetime dt5 = Datetime.newInstance(longtime);
    system.debug('dt5 is '+dt5);

datetime dt8 = Datetime.newInstanceGmt(2022, 11, 100, 24, 30, 40);
system.debug(dt8);
}
}