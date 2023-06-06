public class Datetime_Assignment2 {
public void diffofdate(){
    date vartomorrowDate = date.newInstance(2023, 4, 5);
    system.debug('Tomorrows date is '+vartomorrowDate);
    date vartodayDate = date.newInstance(2023, 4, 4);
    system.debug('Todays date is '+vartodayDate);
    integer dayDifference = vartodayDate.daysBetween(vartomorrowDate);
    system.debug('Day difference between these two dates is '+dayDifference);
}
public void Timecheck(){
    datetime varTomorrowdatetime = datetime.newInstance(2023, 4, 5, 7, 00, 00);
    system.debug('Tomorrows date and time is '+varTomorrowdatetime);
    datetime var10DaysDatetime = datetime.newInstanceGmt(2023, 4, 14, 9, 00, 00);
    system.debug('10 days later date and time is '+var10DaysDatetime);
    Long varDatetimeLong = 12339874361L;
    system.debug(varDatetimeLong);
    datetime newVartomorrowdatetime = varTomorrowdatetime.addDays(7);
    system.debug(newVartomorrowdatetime);
    datetime newVar10daysdatetime = var10DaysDatetime.addDays(10);
    system.debug(newVar10daysdatetime);
}
}