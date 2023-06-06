string sch = '0 0 3 1/1 * ? *';
AccountSchedulable acs = new AccountSchedulable();

system.schedule('Run everyday 3.00AM automatically', sch, acs);