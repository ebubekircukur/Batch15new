list<case> caselist = new list<case>();
for (integer i =0; i<205; i++){
case c = new case();
c.Subject= 'Subject';
c.Description = 'Something about description';
c.Status = 'New';
c.origin = 'web';
caselist.add(c);

}
insert caselist;