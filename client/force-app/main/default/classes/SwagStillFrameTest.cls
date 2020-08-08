@isTest
private class SwagStillFrameTest {
    @isTest
    private static void equalsSameInstance() {
        SwagStillFrame stillFrame1 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame2 = stillFrame1;
        SwagStillFrame stillFrame3 = new SwagStillFrame();
        SwagStillFrame stillFrame4 = stillFrame3;

        System.assert(stillFrame1.equals(stillFrame2));
        System.assert(stillFrame2.equals(stillFrame1));
        System.assert(stillFrame1.equals(stillFrame1));
        System.assert(stillFrame3.equals(stillFrame4));
        System.assert(stillFrame4.equals(stillFrame3));
        System.assert(stillFrame3.equals(stillFrame3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagStillFrame stillFrame1 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame2 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame3 = new SwagStillFrame();
        SwagStillFrame stillFrame4 = new SwagStillFrame();

        System.assert(stillFrame1.equals(stillFrame2));
        System.assert(stillFrame2.equals(stillFrame1));
        System.assert(stillFrame3.equals(stillFrame4));
        System.assert(stillFrame4.equals(stillFrame3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagStillFrame stillFrame1 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame2 = new SwagStillFrame();

        System.assertEquals(false, stillFrame1.equals(stillFrame2));
        System.assertEquals(false, stillFrame2.equals(stillFrame1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagStillFrame stillFrame1 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame2 = new SwagStillFrame();

        System.assertEquals(false, stillFrame1.equals('foo'));
        System.assertEquals(false, stillFrame2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagStillFrame stillFrame1 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame2 = new SwagStillFrame();
        SwagStillFrame stillFrame3;

        System.assertEquals(false, stillFrame1.equals(stillFrame3));
        System.assertEquals(false, stillFrame2.equals(stillFrame3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagStillFrame stillFrame1 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame2 = new SwagStillFrame();

        System.assertEquals(stillFrame1.hashCode(), stillFrame1.hashCode());
        System.assertEquals(stillFrame2.hashCode(), stillFrame2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagStillFrame stillFrame1 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame2 = SwagStillFrame.getExample();
        SwagStillFrame stillFrame3 = new SwagStillFrame();
        SwagStillFrame stillFrame4 = new SwagStillFrame();

        System.assert(stillFrame1.equals(stillFrame2));
        System.assert(stillFrame3.equals(stillFrame4));
        System.assertEquals(stillFrame1.hashCode(), stillFrame2.hashCode());
        System.assertEquals(stillFrame3.hashCode(), stillFrame4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagStillFrame stillFrame = new SwagStillFrame();
        Map<String, String> propertyMappings = stillFrame.getPropertyMappings();
        System.assertEquals('frameNumber', propertyMappings.get('FrameNumber'));
        System.assertEquals('timeStamp', propertyMappings.get('TimeStamp'));
        System.assertEquals('content', propertyMappings.get('Content'));
    }
}
