public class conditionclass_assignment {
public string   Ifclassmethod(integer a){
string outputMonth = 'Not a valid Month';

if(a==1){
    outputMonth='January';
}
else if (a==2){
    outputMonth='February';
}
else {
    outputMonth='Not a valid Month';
}
return outputMonth;
}
public string casemethod(string quarter){

string outputQuarter = 'Enter a proper Month name';

switch on quarter {
    when 'January','February','March' {
        outputQuarter= 'quarter 1';
    }
    when else { outputQuarter = 'Not a valid quarter';    
    }
}
return outputQuarter;
}
}