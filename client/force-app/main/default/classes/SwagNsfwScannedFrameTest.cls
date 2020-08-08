@isTest
private class SwagNsfwScannedFrameTest {
    @isTest
    private static void equalsSameInstance() {
        SwagNsfwScannedFrame nsfwScannedFrame1 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame2 = nsfwScannedFrame1;
        SwagNsfwScannedFrame nsfwScannedFrame3 = new SwagNsfwScannedFrame();
        SwagNsfwScannedFrame nsfwScannedFrame4 = nsfwScannedFrame3;

        System.assert(nsfwScannedFrame1.equals(nsfwScannedFrame2));
        System.assert(nsfwScannedFrame2.equals(nsfwScannedFrame1));
        System.assert(nsfwScannedFrame1.equals(nsfwScannedFrame1));
        System.assert(nsfwScannedFrame3.equals(nsfwScannedFrame4));
        System.assert(nsfwScannedFrame4.equals(nsfwScannedFrame3));
        System.assert(nsfwScannedFrame3.equals(nsfwScannedFrame3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagNsfwScannedFrame nsfwScannedFrame1 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame2 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame3 = new SwagNsfwScannedFrame();
        SwagNsfwScannedFrame nsfwScannedFrame4 = new SwagNsfwScannedFrame();

        System.assert(nsfwScannedFrame1.equals(nsfwScannedFrame2));
        System.assert(nsfwScannedFrame2.equals(nsfwScannedFrame1));
        System.assert(nsfwScannedFrame3.equals(nsfwScannedFrame4));
        System.assert(nsfwScannedFrame4.equals(nsfwScannedFrame3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagNsfwScannedFrame nsfwScannedFrame1 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame2 = new SwagNsfwScannedFrame();

        System.assertEquals(false, nsfwScannedFrame1.equals(nsfwScannedFrame2));
        System.assertEquals(false, nsfwScannedFrame2.equals(nsfwScannedFrame1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagNsfwScannedFrame nsfwScannedFrame1 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame2 = new SwagNsfwScannedFrame();

        System.assertEquals(false, nsfwScannedFrame1.equals('foo'));
        System.assertEquals(false, nsfwScannedFrame2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagNsfwScannedFrame nsfwScannedFrame1 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame2 = new SwagNsfwScannedFrame();
        SwagNsfwScannedFrame nsfwScannedFrame3;

        System.assertEquals(false, nsfwScannedFrame1.equals(nsfwScannedFrame3));
        System.assertEquals(false, nsfwScannedFrame2.equals(nsfwScannedFrame3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagNsfwScannedFrame nsfwScannedFrame1 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame2 = new SwagNsfwScannedFrame();

        System.assertEquals(nsfwScannedFrame1.hashCode(), nsfwScannedFrame1.hashCode());
        System.assertEquals(nsfwScannedFrame2.hashCode(), nsfwScannedFrame2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagNsfwScannedFrame nsfwScannedFrame1 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame2 = SwagNsfwScannedFrame.getExample();
        SwagNsfwScannedFrame nsfwScannedFrame3 = new SwagNsfwScannedFrame();
        SwagNsfwScannedFrame nsfwScannedFrame4 = new SwagNsfwScannedFrame();

        System.assert(nsfwScannedFrame1.equals(nsfwScannedFrame2));
        System.assert(nsfwScannedFrame3.equals(nsfwScannedFrame4));
        System.assertEquals(nsfwScannedFrame1.hashCode(), nsfwScannedFrame2.hashCode());
        System.assertEquals(nsfwScannedFrame3.hashCode(), nsfwScannedFrame4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagNsfwScannedFrame nsfwScannedFrame = new SwagNsfwScannedFrame();
        Map<String, String> propertyMappings = nsfwScannedFrame.getPropertyMappings();
        System.assertEquals('frameNumber', propertyMappings.get('FrameNumber'));
        System.assertEquals('timeStamp', propertyMappings.get('TimeStamp'));
        System.assertEquals('content', propertyMappings.get('Content'));
        System.assertEquals('classificationResult', propertyMappings.get('ClassificationResult'));
        System.assertEquals('score', propertyMappings.get('Score'));
    }
}
