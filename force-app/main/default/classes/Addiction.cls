public  class Addiction {
    public static void Add(String oprator,Integer num1,integer  num2 ) {
        Decimal reasult;
        switch on oprator {
            when 'ad'
            {
                reasult = num1 + num2;
                System.debug('Addition Result: ' + reasult);
               }
             when 'sb'
             {
                reasult=num1-num2;
                system.debug('substraction'+reasult);
              }
            when 'mul'
            {
                reasult=num1*num2;
                system.debug('multiplication is '+reasult);
              }
            when 'div'
            {
                reasult=num1/num2;
                system.debug('division is '+reasult);
            }
           
             when else {
                system.debug('please chouse opration is givan bellow');
             }












    }   

}



}