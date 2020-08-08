@isTest
private class SwagSplitVideoResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagSplitVideoResult splitVideoResult1 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult2 = splitVideoResult1;
        SwagSplitVideoResult splitVideoResult3 = new SwagSplitVideoResult();
        SwagSplitVideoResult splitVideoResult4 = splitVideoResult3;

        System.assert(splitVideoResult1.equals(splitVideoResult2));
        System.assert(splitVideoResult2.equals(splitVideoResult1));
        System.assert(splitVideoResult1.equals(splitVideoResult1));
        System.assert(splitVideoResult3.equals(splitVideoResult4));
        System.assert(splitVideoResult4.equals(splitVideoResult3));
        System.assert(splitVideoResult3.equals(splitVideoResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagSplitVideoResult splitVideoResult1 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult2 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult3 = new SwagSplitVideoResult();
        SwagSplitVideoResult splitVideoResult4 = new SwagSplitVideoResult();

        System.assert(splitVideoResult1.equals(splitVideoResult2));
        System.assert(splitVideoResult2.equals(splitVideoResult1));
        System.assert(splitVideoResult3.equals(splitVideoResult4));
        System.assert(splitVideoResult4.equals(splitVideoResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagSplitVideoResult splitVideoResult1 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult2 = new SwagSplitVideoResult();

        System.assertEquals(false, splitVideoResult1.equals(splitVideoResult2));
        System.assertEquals(false, splitVideoResult2.equals(splitVideoResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagSplitVideoResult splitVideoResult1 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult2 = new SwagSplitVideoResult();

        System.assertEquals(false, splitVideoResult1.equals('foo'));
        System.assertEquals(false, splitVideoResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagSplitVideoResult splitVideoResult1 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult2 = new SwagSplitVideoResult();
        SwagSplitVideoResult splitVideoResult3;

        System.assertEquals(false, splitVideoResult1.equals(splitVideoResult3));
        System.assertEquals(false, splitVideoResult2.equals(splitVideoResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagSplitVideoResult splitVideoResult1 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult2 = new SwagSplitVideoResult();

        System.assertEquals(splitVideoResult1.hashCode(), splitVideoResult1.hashCode());
        System.assertEquals(splitVideoResult2.hashCode(), splitVideoResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagSplitVideoResult splitVideoResult1 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult2 = SwagSplitVideoResult.getExample();
        SwagSplitVideoResult splitVideoResult3 = new SwagSplitVideoResult();
        SwagSplitVideoResult splitVideoResult4 = new SwagSplitVideoResult();

        System.assert(splitVideoResult1.equals(splitVideoResult2));
        System.assert(splitVideoResult3.equals(splitVideoResult4));
        System.assertEquals(splitVideoResult1.hashCode(), splitVideoResult2.hashCode());
        System.assertEquals(splitVideoResult3.hashCode(), splitVideoResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagSplitVideoResult splitVideoResult = new SwagSplitVideoResult();
        Map<String, String> propertyMappings = splitVideoResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('videos', propertyMappings.get('Videos'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagSplitVideoResult splitVideoResult = new SwagSplitVideoResult();
        System.assertEquals(new List<SwagVideoFile>(), splitVideoResult.videos);
        System.assertEquals(null, splitVideoResult.successful);
    }
}
