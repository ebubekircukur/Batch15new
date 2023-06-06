public class DatetimeMethodsDemo {
  public void calculateAgeinmonths(){
    date myBirthday = date.newInstance(1994, 11, 3);
    date todaydate = date.today();
    integer months = myBirthday.monthsBetween(todaydate);
    system.debug('Bekir age in months is '+months);
  }
  public void calculateAgeindays(){
    date myBirthday = date.newInstance(1994, 11, 3);
    date todaydate = date.today();
    integer days = myBirthday.daysBetween(todaydate);
    system.debug('Bekir age in days is '+days);
  }
  public void subsricptionEnddate(){
    date myday = date.today();
    date subsEnddate = myday + 1000;
    system.debug('Subscription end date is '+subsEnddate);
    date newEndDate = date.today();
    date newStartDate = newEndDate.addDays(-1000);
    system.debug(newStartDate);

    integer newsdyear = newStartDate.year();
    system.debug('New start date year is '+newsdyear);
    integer newsdmonth = newStartDate.month();
    system.debug('New start date month is '+newsdmonth);

    }
    public void offerEndtime(){
      datetime offerstart = datetime.now();
      datetime offerend = offerstart.addHours(51);
      system.debug('Offer end time is '+offerend);
datetime bekirBirthday = datetime.newInstance(1994, 11, 3);
Long bekirLongBirthday = bekirBirthday.getTime();
system.debug('My birthday in milliseconds is '+bekirLongBirthday);

    }
}