map <string, integer> marksObtainInMathsmap = new map <string, integer>{'0111CE112' => 40, '0111CE102' => 19, '0111CE100' => 33, '0111CE098' => 40};
marksObtainInMathsmap.put('23ASD123', 50);
marksObtainInMathsmap.put('211ATYU123', 20);
marksObtainInMathsmap.put('2311AFGD123', 13);
system.debug( 'Student Roll Numbers ==> '+marksObtainInMathsmap.keySet());
system.debug('Students marks obtains ==> ' +marksObtainInMathsmap.values());
set<string> uniqueRollNumberSet = marksObtainInMathsmap.keySet();
system.debug('Set of uniqueRollNumbers ==> '+uniqueRollNumberSet);
list<integer> studentmarksobtain = marksObtainInMathsmap.values();
system.debug('List of marksObtainList ==> '+studentmarksobtain);
for ( string eachuniquenumber : uniqueRollNumberSet){
  integer eachstudentmarks =  marksObtainInMathsmap.get(eachuniquenumber);
if (20> eachstudentmarks){
    system.debug(eachuniquenumber + ' is not qualified for next class.');
}

}