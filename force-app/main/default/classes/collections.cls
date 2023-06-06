public class collections {
public static string listaAssignment(integer a){

list<string> LstMonth = new list<string>();

LstMonth.add('January');
LstMonth.add('February');
LstMonth.add('March');
LstMonth.add('April');
LstMonth.add('May');
LstMonth.add('June');
LstMonth.add('July');
LstMonth.add('August');
LstMonth.add('September');
LstMonth.add('October');
LstMonth.add('November');
LstMonth.add('December');
string output_month= '';
integer size = LstMonth.size();
if (a > 0 && size >= a) {
  output_month = LstMonth.get(a-1) ;
}
else { 
output_month = 'Not a valid number';
}
return output_month;
}
}