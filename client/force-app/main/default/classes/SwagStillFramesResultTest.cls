@isTest
private class SwagStillFramesResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagStillFramesResult stillFramesResult1 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult2 = stillFramesResult1;
        SwagStillFramesResult stillFramesResult3 = new SwagStillFramesResult();
        SwagStillFramesResult stillFramesResult4 = stillFramesResult3;

        System.assert(stillFramesResult1.equals(stillFramesResult2));
        System.assert(stillFramesResult2.equals(stillFramesResult1));
        System.assert(stillFramesResult1.equals(stillFramesResult1));
        System.assert(stillFramesResult3.equals(stillFramesResult4));
        System.assert(stillFramesResult4.equals(stillFramesResult3));
        System.assert(stillFramesResult3.equals(stillFramesResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagStillFramesResult stillFramesResult1 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult2 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult3 = new SwagStillFramesResult();
        SwagStillFramesResult stillFramesResult4 = new SwagStillFramesResult();

        System.assert(stillFramesResult1.equals(stillFramesResult2));
        System.assert(stillFramesResult2.equals(stillFramesResult1));
        System.assert(stillFramesResult3.equals(stillFramesResult4));
        System.assert(stillFramesResult4.equals(stillFramesResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagStillFramesResult stillFramesResult1 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult2 = new SwagStillFramesResult();

        System.assertEquals(false, stillFramesResult1.equals(stillFramesResult2));
        System.assertEquals(false, stillFramesResult2.equals(stillFramesResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagStillFramesResult stillFramesResult1 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult2 = new SwagStillFramesResult();

        System.assertEquals(false, stillFramesResult1.equals('foo'));
        System.assertEquals(false, stillFramesResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagStillFramesResult stillFramesResult1 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult2 = new SwagStillFramesResult();
        SwagStillFramesResult stillFramesResult3;

        System.assertEquals(false, stillFramesResult1.equals(stillFramesResult3));
        System.assertEquals(false, stillFramesResult2.equals(stillFramesResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagStillFramesResult stillFramesResult1 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult2 = new SwagStillFramesResult();

        System.assertEquals(stillFramesResult1.hashCode(), stillFramesResult1.hashCode());
        System.assertEquals(stillFramesResult2.hashCode(), stillFramesResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagStillFramesResult stillFramesResult1 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult2 = SwagStillFramesResult.getExample();
        SwagStillFramesResult stillFramesResult3 = new SwagStillFramesResult();
        SwagStillFramesResult stillFramesResult4 = new SwagStillFramesResult();

        System.assert(stillFramesResult1.equals(stillFramesResult2));
        System.assert(stillFramesResult3.equals(stillFramesResult4));
        System.assertEquals(stillFramesResult1.hashCode(), stillFramesResult2.hashCode());
        System.assertEquals(stillFramesResult3.hashCode(), stillFramesResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagStillFramesResult stillFramesResult = new SwagStillFramesResult();
        Map<String, String> propertyMappings = stillFramesResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('totalFrames', propertyMappings.get('TotalFrames'));
        System.assertEquals('stillFrames', propertyMappings.get('StillFrames'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagStillFramesResult stillFramesResult = new SwagStillFramesResult();
        System.assertEquals(new List<SwagStillFrame>(), stillFramesResult.stillFrames);
        System.assertEquals(null, stillFramesResult.successful);
        System.assertEquals(null, stillFramesResult.totalFrames);
    }
}
