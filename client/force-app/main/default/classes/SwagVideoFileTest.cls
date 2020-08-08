@isTest
private class SwagVideoFileTest {
    @isTest
    private static void equalsSameInstance() {
        SwagVideoFile videoFile1 = SwagVideoFile.getExample();
        SwagVideoFile videoFile2 = videoFile1;
        SwagVideoFile videoFile3 = new SwagVideoFile();
        SwagVideoFile videoFile4 = videoFile3;

        System.assert(videoFile1.equals(videoFile2));
        System.assert(videoFile2.equals(videoFile1));
        System.assert(videoFile1.equals(videoFile1));
        System.assert(videoFile3.equals(videoFile4));
        System.assert(videoFile4.equals(videoFile3));
        System.assert(videoFile3.equals(videoFile3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagVideoFile videoFile1 = SwagVideoFile.getExample();
        SwagVideoFile videoFile2 = SwagVideoFile.getExample();
        SwagVideoFile videoFile3 = new SwagVideoFile();
        SwagVideoFile videoFile4 = new SwagVideoFile();

        System.assert(videoFile1.equals(videoFile2));
        System.assert(videoFile2.equals(videoFile1));
        System.assert(videoFile3.equals(videoFile4));
        System.assert(videoFile4.equals(videoFile3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagVideoFile videoFile1 = SwagVideoFile.getExample();
        SwagVideoFile videoFile2 = new SwagVideoFile();

        System.assertEquals(false, videoFile1.equals(videoFile2));
        System.assertEquals(false, videoFile2.equals(videoFile1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagVideoFile videoFile1 = SwagVideoFile.getExample();
        SwagVideoFile videoFile2 = new SwagVideoFile();

        System.assertEquals(false, videoFile1.equals('foo'));
        System.assertEquals(false, videoFile2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagVideoFile videoFile1 = SwagVideoFile.getExample();
        SwagVideoFile videoFile2 = new SwagVideoFile();
        SwagVideoFile videoFile3;

        System.assertEquals(false, videoFile1.equals(videoFile3));
        System.assertEquals(false, videoFile2.equals(videoFile3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagVideoFile videoFile1 = SwagVideoFile.getExample();
        SwagVideoFile videoFile2 = new SwagVideoFile();

        System.assertEquals(videoFile1.hashCode(), videoFile1.hashCode());
        System.assertEquals(videoFile2.hashCode(), videoFile2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagVideoFile videoFile1 = SwagVideoFile.getExample();
        SwagVideoFile videoFile2 = SwagVideoFile.getExample();
        SwagVideoFile videoFile3 = new SwagVideoFile();
        SwagVideoFile videoFile4 = new SwagVideoFile();

        System.assert(videoFile1.equals(videoFile2));
        System.assert(videoFile3.equals(videoFile4));
        System.assertEquals(videoFile1.hashCode(), videoFile2.hashCode());
        System.assertEquals(videoFile3.hashCode(), videoFile4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagVideoFile videoFile = new SwagVideoFile();
        Map<String, String> propertyMappings = videoFile.getPropertyMappings();
        System.assertEquals('videoNumber', propertyMappings.get('VideoNumber'));
        System.assertEquals('content', propertyMappings.get('Content'));
    }
}
