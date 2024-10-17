public class IFDemo {
           public static void max(integer Number1,integer Number2)
           {
              // Integer Number1=10,Number2=50;
                 
               IF(Number1>Number2){
                   System.Debug('number one is greater than number 2='+Number1);
               }
                  Else
                      
                  {
                      System.debug('number 2 is greater than number 1='+Number2);
                  }
               
           }
            
        
          
        
           public static void Vote(integer age)
        {
            If(age>=18){
               System.debug('you are able to vote'+age); 
            }
             Else{
                System.debug('you cant vote beacoude your age is lase than'+age);
            }
        }
               public static void Mod( integer num)
             {
                 if(math.mod(num,2)==0)
                 {
                     System.debug('unmber is even'+num); 
                 }
                 else
                 {
                     system.debug('unmber is odd'+num);
                 }
             }    
            
            
        }