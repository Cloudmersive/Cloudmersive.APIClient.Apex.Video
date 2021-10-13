@isTest
private class SwagAudioApiTest {
    /**
     * Convert Audio File to AAC format.
     *
     * Automatically detect audio file format and convert it to AAC format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void audioConvertToAacTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'bitRate' => 56
        };

        SwagClient client;
        SwagAudioApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagAudioApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "blank": false,\n  "bytes": [\n    86,\n    71,\n    104,\n    108,\n    73,\n    72,\n    70,\n    49,\n    97,\n    87,\n    78,\n    114,\n    73,\n    71,\n    74,\n    121,\n    98,\n    51,\n    100,\n    117,\n    73,\n    71,\n    90,\n    118,\n    101,\n    67,\n    66,\n    113,\n    100,\n    87,\n    49,\n    119,\n    90,\n    87,\n    81,\n    103,\n    98,\n    51,\n    90,\n    108,\n    99,\n    105,\n    66,\n    48,\n    97,\n    71,\n    85,\n    103,\n    98,\n    71,\n    70,\n    54,\n    101,\n    83,\n    66,\n    107,\n    98,\n    50,\n    99,\n    117\n  ],\n  "empty": false\n}');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.audioConvertToAac(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert Audio File to M4A format.
     *
     * Automatically detect audio file format and convert it to M4A format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void audioConvertToM4aTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'bitRate' => 56
        };

        SwagClient client;
        SwagAudioApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagAudioApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "blank": false,\n  "bytes": [\n    86,\n    71,\n    104,\n    108,\n    73,\n    72,\n    70,\n    49,\n    97,\n    87,\n    78,\n    114,\n    73,\n    71,\n    74,\n    121,\n    98,\n    51,\n    100,\n    117,\n    73,\n    71,\n    90,\n    118,\n    101,\n    67,\n    66,\n    113,\n    100,\n    87,\n    49,\n    119,\n    90,\n    87,\n    81,\n    103,\n    98,\n    51,\n    90,\n    108,\n    99,\n    105,\n    66,\n    48,\n    97,\n    71,\n    85,\n    103,\n    98,\n    71,\n    70,\n    54,\n    101,\n    83,\n    66,\n    107,\n    98,\n    50,\n    99,\n    117\n  ],\n  "empty": false\n}');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.audioConvertToM4a(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert Audio File to MP3 format.
     *
     * Automatically detect audio file format and convert it to MP3 format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void audioConvertToMp3Test() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'bitRate' => 56
        };

        SwagClient client;
        SwagAudioApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagAudioApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "blank": false,\n  "bytes": [\n    86,\n    71,\n    104,\n    108,\n    73,\n    72,\n    70,\n    49,\n    97,\n    87,\n    78,\n    114,\n    73,\n    71,\n    74,\n    121,\n    98,\n    51,\n    100,\n    117,\n    73,\n    71,\n    90,\n    118,\n    101,\n    67,\n    66,\n    113,\n    100,\n    87,\n    49,\n    119,\n    90,\n    87,\n    81,\n    103,\n    98,\n    51,\n    90,\n    108,\n    99,\n    105,\n    66,\n    48,\n    97,\n    71,\n    85,\n    103,\n    98,\n    71,\n    70,\n    54,\n    101,\n    83,\n    66,\n    107,\n    98,\n    50,\n    99,\n    117\n  ],\n  "empty": false\n}');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.audioConvertToMp3(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert Audio File to WAV format.
     *
     * Automatically detect audio file format and convert it to WAV format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void audioConvertToWavTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'sampleRate' => 8.14
        };

        SwagClient client;
        SwagAudioApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagAudioApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "blank": false,\n  "bytes": [\n    86,\n    71,\n    104,\n    108,\n    73,\n    72,\n    70,\n    49,\n    97,\n    87,\n    78,\n    114,\n    73,\n    71,\n    74,\n    121,\n    98,\n    51,\n    100,\n    117,\n    73,\n    71,\n    90,\n    118,\n    101,\n    67,\n    66,\n    113,\n    100,\n    87,\n    49,\n    119,\n    90,\n    87,\n    81,\n    103,\n    98,\n    51,\n    90,\n    108,\n    99,\n    105,\n    66,\n    48,\n    97,\n    71,\n    85,\n    103,\n    98,\n    71,\n    70,\n    54,\n    101,\n    83,\n    66,\n    107,\n    98,\n    50,\n    99,\n    117\n  ],\n  "empty": false\n}');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.audioConvertToWav(params);
        System.assertEquals(expectedResponse, response);
    }
}