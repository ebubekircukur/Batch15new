public class CaseTriggerHandler {
public static integer recordcount =0;
public static integer triggercount =0;
// public static void CaseOrigin(list<case> casetriggerNew, list<case> casetriggerOld, map<id, case> casetriggerNewMap, map<id, case> casetriggerOldMap){
// for (case eachcase : casetriggerNew){
//     if(eachcase.origin == 'Email'){
// eachcase.Status = 'New';
// eachcase.Priority = 'Medium';
//     }
// }

// }
// public static void CreateChildCase(list<case> casetriggerNew, list<case> casetriggerOld, map<id, case> casetriggerNewMap, map<id, case> casetriggerOldMap){
//     list <case> childcaselist = new  list <case>();
//     for (case eachcase : casetriggerNew){
//     if ( eachcase.Description.contains('Password')){
//     case childcase = new case();
//     childcase.Subject = 'Parent Case may contain secret info, do something NOW';
//     childcase.ParentId = eachcase.id;
//     childcase.Priority = 'High';
//     childcase.Description = 'Secret info not allowed in case';
//     childcaselist.add(childcase);
//     }
//     }
//    if(!childcaselist.isEmpty()){
//     insert childcaselist;   
//    }
// }
}
