@isTest
private class SwagMediaInformationTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMediaInformation mediaInformation1 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation2 = mediaInformation1;
        SwagMediaInformation mediaInformation3 = new SwagMediaInformation();
        SwagMediaInformation mediaInformation4 = mediaInformation3;

        System.assert(mediaInformation1.equals(mediaInformation2));
        System.assert(mediaInformation2.equals(mediaInformation1));
        System.assert(mediaInformation1.equals(mediaInformation1));
        System.assert(mediaInformation3.equals(mediaInformation4));
        System.assert(mediaInformation4.equals(mediaInformation3));
        System.assert(mediaInformation3.equals(mediaInformation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMediaInformation mediaInformation1 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation2 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation3 = new SwagMediaInformation();
        SwagMediaInformation mediaInformation4 = new SwagMediaInformation();

        System.assert(mediaInformation1.equals(mediaInformation2));
        System.assert(mediaInformation2.equals(mediaInformation1));
        System.assert(mediaInformation3.equals(mediaInformation4));
        System.assert(mediaInformation4.equals(mediaInformation3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMediaInformation mediaInformation1 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation2 = new SwagMediaInformation();

        System.assertEquals(false, mediaInformation1.equals(mediaInformation2));
        System.assertEquals(false, mediaInformation2.equals(mediaInformation1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMediaInformation mediaInformation1 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation2 = new SwagMediaInformation();

        System.assertEquals(false, mediaInformation1.equals('foo'));
        System.assertEquals(false, mediaInformation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMediaInformation mediaInformation1 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation2 = new SwagMediaInformation();
        SwagMediaInformation mediaInformation3;

        System.assertEquals(false, mediaInformation1.equals(mediaInformation3));
        System.assertEquals(false, mediaInformation2.equals(mediaInformation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMediaInformation mediaInformation1 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation2 = new SwagMediaInformation();

        System.assertEquals(mediaInformation1.hashCode(), mediaInformation1.hashCode());
        System.assertEquals(mediaInformation2.hashCode(), mediaInformation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMediaInformation mediaInformation1 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation2 = SwagMediaInformation.getExample();
        SwagMediaInformation mediaInformation3 = new SwagMediaInformation();
        SwagMediaInformation mediaInformation4 = new SwagMediaInformation();

        System.assert(mediaInformation1.equals(mediaInformation2));
        System.assert(mediaInformation3.equals(mediaInformation4));
        System.assertEquals(mediaInformation1.hashCode(), mediaInformation2.hashCode());
        System.assertEquals(mediaInformation3.hashCode(), mediaInformation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagMediaInformation mediaInformation = new SwagMediaInformation();
        Map<String, String> propertyMappings = mediaInformation.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('fileFormat', propertyMappings.get('FileFormat'));
        System.assertEquals('fileFormatFull', propertyMappings.get('FileFormatFull'));
        System.assertEquals('validFileFormats', propertyMappings.get('ValidFileFormats'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
        System.assertEquals('size', propertyMappings.get('Size'));
        System.assertEquals('bitRate', propertyMappings.get('BitRate'));
        System.assertEquals('duration', propertyMappings.get('Duration'));
        System.assertEquals('startTime', propertyMappings.get('StartTime'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagMediaInformation mediaInformation = new SwagMediaInformation();
        System.assertEquals(new List<String>(), mediaInformation.validFileFormats);
        System.assertEquals(null, mediaInformation.successful);
        System.assertEquals(null, mediaInformation.fileFormat);
        System.assertEquals(null, mediaInformation.fileFormatFull);
        System.assertEquals(null, mediaInformation.width);
        System.assertEquals(null, mediaInformation.height);
        System.assertEquals(null, mediaInformation.size);
        System.assertEquals(null, mediaInformation.bitRate);
        System.assertEquals(null, mediaInformation.duration);
        System.assertEquals(null, mediaInformation.startTime);
    }
}
