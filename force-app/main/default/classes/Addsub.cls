public  class Addsub {
    public static void Add(String oprator,Integer num1,integer  num2 ) {
        Decimal reasult;
        switch on oprator {
            when 'addiction'
             {
                reasult = num1 + num2;
                System.debug('Addition Result: ' + reasult);
               }
             when 'substraction'
             {
                reasult=num1-num2;
                system.debug('substraction'+reasult);
              }
            when 'multiplication'
            {
                reasult=num1*num2;
                system.debug('multiplication'+reasult);
              }
            when 'divison'
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