Trigger_Map a = new Trigger_Map();
id idofa =a.InsertSF_Project();
system.debug('ID is = '+idofa);
a.UpdateSF_Project(idofa, 'Updated Trigger Project');