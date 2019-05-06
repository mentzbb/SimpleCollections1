@isTest
private class SimpleCollections1_Test 
{
    @isTest
    static void TestGetMaxInList1()
    {
        List<Integer> values=new List<Integer>{1, 8,219, 40, 12, 78, -3, 67};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(219, simpleColl.getMaxInList(values));
    }

    @isTest
    static void TestGetMaxInList2()
    {
        List<Integer> values=new List<Integer>{0, 11, 42, 3, 16, 41, 43, 8};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(43, simpleColl.getMaxInList(values));
    }

    @isTest
    static void TestGetMaxInList3()
    {
        List<Integer> values=new List<Integer>{0, -11, -22, -3, -6, -4, -343, -8};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(0, simpleColl.getMaxInList(values));
    }

    @isTest
    static void TestIsInListSuccess()
    {
        List<Integer> values=new List<Integer>{1, 2, 5, 4, 20, 11, 7, -5};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(true, simpleColl.isInList(values, 5));
    }

    @isTest
    static void TestIsInListFail()
    {
        List<Integer> values=new List<Integer>{1, 2, 8, 4, 20, 11, 7, -5};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(true, simpleColl.isInList(values, -8));
    }

    @isTest
    static void TestReverseList()
    {
        List<Integer> values=new List<Integer>{1, 2, 8, 4, 20, 11, 7, 41, 28, 476, 14};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(new List<Integer> {14, 476, 28, 41, 7, 11, 20, 4, 8, 2, 1}, 
                                               simpleColl.reverseList(values));
    }

    @isTest
    static void TestShiftLeft1()
    {
        List<Integer> values=new List<Integer>{7, 3, 9, 6, 12, 1};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(new List<Integer> {9, 6, 12, 1, 7, 3}, 
                                               simpleColl.shiftLeft(values, 2));
    }

    @isTest
    static void TestShiftLeft2()
    {
        List<Integer> values=new List<Integer>{7, 3, 9, 6, 12, 1};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(new List<Integer> {3, 9, 6, 12, 1, 7}, 
                                               simpleColl.reverseList(values, 7));
    }

    @isTest
    static void TestJoinAlternate()
    {
        List<Integer> left=new List<Integer>{12, 4, 8, 20};
        List<Integer> right=new List<Integer>{2, 9, 15, 1};
        SimpleCollections1 simpleColl=new SimpleCollections1();
        System.assertEquals(new List<Integer> {12, 2, 4, 9, 8, 14, 20, 1}, 
                                               simpleColl.joinAlternate(left, right));
    }
}