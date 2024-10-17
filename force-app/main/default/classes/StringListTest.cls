public with sharing class StringListTest {
    public static List<String> generateStringList(Integer n) {
        List<String> sList = new List<String>(); 
        
        for (Integer i = 0; i < n; i++) {
            String str = 'Test ' + i;
            sList.add(str); 
            System.debug(str);
        }
        
        return sList;
    }
}