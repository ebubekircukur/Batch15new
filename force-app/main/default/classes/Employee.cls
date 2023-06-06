public class Employee {
string name;
decimal salary;
integer age;

public void setName(string name){
    this.name = name;
}
public string getName(){
    return this.name;
}
public void setSalary(Decimal salary){
    if(salary >= 8000 && salary <= 50000) {
        this.salary = salary;
    }
        else {
            this.salary = 0;
            system.debug('Salary not in valid range. Please set salary in limits');
        }
    }
  

public decimal getSalary(){
    return this.salary;
}
}