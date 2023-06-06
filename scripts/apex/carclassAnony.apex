//Carrr bmw = new Carrr();
//bmw.details();
//system.debug('---------');
//carrR ford = new Carrr();
//ford.details();

carrr bmw = new carrr('BMW X3');
bmw.details();

carrr ford = new carrr();
ford.details();

carrr bmw2 = new carrr('BMW X3', 'ABC10001', 'Black', 2020, 45000);

carrr ford2 = new carrr('Ford Mustang', 'ABC10002', 'Red', 2023,50000.00);

string ford2name = ford2.name;
string ford2color = ford2.color;
system.debug('Ford 2 name and color are '+ ford2name+', '+ford2color);
system.debug('-------------');
ford2.name = 'Ford Focus';
ford2.color = 'Silver';
ford2.details();

