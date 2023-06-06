public class pizzaClass {
    Integer orderId = 0;
    Integer quantity;
    String toppings;
    String type;
    Decimal tax;
    String feedback;
public void addCart(integer quantity1, string toppings1, string type1){
quantity = quantity1;
toppings = toppings1;
type = type1;
orderId+=1;
if (quantity1 == 1){
tax = 0.18;
}
else if (quantity1 == 2){
    tax = 0.12;
}
else if (quantity1 == 3){
    tax = 0.06;
}
else { tax = 0;
}

}
public void cancelcart(){
    orderId = 0;
}
public void feedback(string feedback){
system.debug(feedback);
}
}