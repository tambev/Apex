public class DEmosoql {
    public static void demo(){
        List<Account>AccList=[SELECT Id,Name ,Rating,Industry FROM Account where Industry='Chemicals'OR Rating='Hot'];
        for(Account acc:AccList){
            system.debug(acc); 
        }
    }

    public static void demo2(){
        List<Account>AccList=[SELECT Id,Name ,Rating,Industry FROM Account where Industry IN('Chemicals','Agriculture')];
        for(Account acc:AccList){
            system.debug(acc); 
        }
    }    
    public static void demo3(){
        List<Account>AccList=[SELECT Id,Name ,Rating,Industry FROM Account where Industry ='Chemical' ORDER By Name DESC];
        for(Account acc:AccList){
            system.debug(acc); 
        }
    }
        //understanding working of string  in SOQL
        public static void demo4()
        {
            String Indus='Chemicals';
            List<Account>AccList=[select Id,Name,Industry,Rating from Account where Industry=:Indus];
            for(Account acc:AccList)
            {
                system.debug(acc);

            }
        }      // undesrstanding how we can use integer in Soql
               public static void demo5()
               {
                  integer  Ar=100000;
                   List<Account>AccList=[select Id,Name ,Rating ,Industry from Account  where AnnualRevenue >=:Ar];
                  for(Account acc:AccList){
                    system.debug(acc); 
                }

               }

    }