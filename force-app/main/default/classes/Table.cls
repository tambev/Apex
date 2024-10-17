public class Table {
   
    public static void nTable(Integer n)
    {
      for(integer i=1;i<=10;i++)
      {
          System.debug(n*i);
      }
   }   
      public static void evennum(integer n){
        for(integer i=1;i<n;i++)
         {
            if(Math.mod(i, 2)==0){
                System.debug(i);
            }
         }
      }

      public static void oddnum(integer n){
        for(integer i=1;i<n;i++)
         {
            if(Math.mod(i, 2)!=0){
                System.debug(i);
            }
         }
      }
      public static void natural(integer n){
        integer  i,sum=0;
         for(i=1 ;i<=n; i++)
         {   sum=sum+i;
           
            }
             System.debug(sum);
         }
      }