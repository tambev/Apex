public with sharing class Assigenment1Q2 {
   
        public static void recordInseert(){
           Account acc = null;
          try {
             acc = new Account();
            acc.Name='Assigendemo1';
            acc.AnnualRevenue = 3254;
            insert acc;
                
        } catch (DmlException e) 
        {
            System.debug( 'followiing error has been occer.....'+e);
        
        } 
        
            try {
                Contact con =new Contact();
                con.FirstName = acc.Name;
               // con.LastName = 'Rathod';
                con.country__c ='india';
                con.AccountId =acc.id;
        
                insert con;
        
            } catch ( DmlException contectececption) 
            {
                system.debug('the following exception has benn occcer'+contectececption);
            }
                
        }
        
           public static void Listsexecption()
            {  try {
              List <Integer>Ldemo =new List<Integer>();
              Ldemo.add(15);
              Integer i1 = Ldemo[0]; 
              Integer i2 = Ldemo[1]; 
             
            } catch (Exception e) {
            
                system.debug('error occer '+e);
           }
             

           }
            
        }