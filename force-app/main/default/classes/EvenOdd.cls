public class EvenOdd { 

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
               
              public static void PostiveNegitive(integer num)
           {
               if(num>0)
               {
                   system.debug('unmber is poitive');
                  
               }
               else if(num==0)
               {
                   System.debug('unmber is zero');
               }
               else{
                   System.debug('number is negitivde'); 
               }
           }
    
          public static void Nested(integer num)
    {
          if(num>=0)
         {
            if(num>0)
            {
             System.debug('numberis  positve');    
            }
            else{
               system.debug('number is negavtie');
            }
         } else{
            system.debug('number is zero');
        }
    }
      public Static void Logic(integer num)
      {
          If(num>=0 && num<100){
              System.debug('number is i nthe range');
          }
          else{
              system.debug('uumber is out of range');
          }
      }
    
        public Static void color(Integer num1,Integer num2)
        { if(num1==15||num2==23)
        {
            System.debug(' number is avalable ');
        }
         else{
             System.debug('number is not avallable');
         }
    
        }
    public static void Cheak(){
       LiSt<Account>acc=new List<Account>();
        acc=[Select Id FROM Account LIMIT 5];
        
            
    }
    
    
    

}