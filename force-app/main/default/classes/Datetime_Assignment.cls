public class Datetime_Assignment {
public void dateMethods(){
    date varDate = date.newInstance(2001, 01, 01);
    system.debug(varDate);
}
public void timeMethods(){
    time varTime = time.newInstance(06, 21, 29, 00);
    system.debug(varTime);
}
public void datetimeMethods(){
    date varDate = date.newInstance(2001, 01, 01);
    time varTime = time.newInstance(06, 21, 29, 00);
    datetime varDatetime = Datetime.newInstanceGmt(2001, 01, 01, 06, 21, 29);
    system.debug(varDatetime);
}
}