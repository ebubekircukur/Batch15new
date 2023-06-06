public class InventoryManager {

    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
    public static integer productCount=0;
    Public InventoryManager(){
    productCount++;
    
    }
    Public InventoryManager(string productName, string productCode){
        productCount++;
        this.productName=productName;
        this.productCode=productCode;
        }
        public integer getcostPrice(){
            return this.costPrice;
        }
        public integer getSellingPrice(){
            return this.sellingPrice;
        }
        public void setCostPrice(integer costPrice){
            this.costPrice=costPrice;
        }public void setSellingPrice (integer sellingPrice){                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
            this.sellingPrice=sellingPrice;
        }
        public void productDisplay(){
            system.debug('Product Name is '+ productName);
            system.debug('Product Code is '+ productCode);
            system.debug('Product Cost price is '+ costPrice);
            system.debug('Product Selling price is '+ sellingPrice);
       integer profitpercent = (sellingPrice-costPrice)*100/costPrice;
        if (profitpercent>=20) {
        system.debug('Star Product');  
        } else {
        system.debug('Average Product');
        }
        }
    }