public class setDemo {
     public static void demo()
     {
         

        Set<Integer> intset= new Set<Integer>();
         List<Integer> intList =new List<Integer>();
        intset.add(10);
        intset.add(20);
        intset.add(30);
        intset.add(40);
        intset.add(50);
         intList.add(56);
         intset.addAll(intList);
        System.debug('set contains'+intset);
     }
}