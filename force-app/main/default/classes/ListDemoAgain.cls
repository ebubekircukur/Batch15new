public class ListDemoAgain {
    public static void randomIntegerList() {
        List<integer> intList = new list<integer>();
        intList.add(90);//0
        intList.add(15);//1
        intList.add(77);//2
        intList.add(21);//3
        intList.add(15);//4
        intList.add(15);//5
        system.debug('int list ==> ' + intList);
        integer size = intList.size();
        system.debug('size of list is ' + size);

        integer int3 = intList.get(3);
        //OR
        integer int31 = intList[3];
        system.debug('int3 is ' + int3);
        system.debug('int31 is ' + int31);

        //system.debug(intList[6]);//will it work? No. 
        intList[4] = 30;
        system.debug('after update ' + intList);

    }

    public static void practiceList1() {
        list<integer> l1 = new list<integer>();

        for (Integer i = 1; i <= 5; i++) {
            l1.add(i*11);
        }
        system.debug(l1);
    }

    public static void printAnimalsList() {
        list<string> animals = new list<string>();
        animals.add('dog');     //0
        animals.add('cat');     //1
        animals.add('horse');   //2
        animals.add('monkey');  //3
        animals.add('tiger');   //4
        animals.add('lion');    //5
        animals.add('lion');    //6

        system.debug('animals : ' + animals);
        integer numOfAnimals = animals.size();
        system.debug('number of animals : ' + numOfAnimals);
        system.debug('last element is ' + animals.get(numOfAnimals - 1).toUpperCase());

        animals.remove(numOfAnimals-1);
        system.debug('after update animals : ' + animals);
        system.debug('number of animals after update : ' + animals.size());
    }
public static void printAnimalList2(){
list<string> animals = new list<string>();
animals.add('dog');
animals.add('tiger');
animals.add('kangoroo');
animals.add('bear');
animals.add('cat');
animals.add('lion');
animals.add('lion');
}
}