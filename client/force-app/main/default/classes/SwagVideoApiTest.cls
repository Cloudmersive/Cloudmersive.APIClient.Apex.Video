@isTest
private class SwagVideoApiTest {
    /**
     * Convert Video to Animated GIF format.
     *
     * Automatically detect video file format and convert it to animated GIF format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB. Default height is 250 pixels, while preserving the video\&#39;s aspect ratio.
     */
    @isTest
    private static void videoConvertToGifTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'maxWidth' => 56,
            'maxHeight' => 56,
            'preserveAspectRatio' => true,
            'frameRate' => 56,
            'extendProcessingTime' => true,
            'startTime' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeSpan' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        SwagClient client;
        SwagVideoApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.videoConvertToGif(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert Video to MOV format.
     *
     * Automatically detect video file format and convert it to MOV format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.
     */
    @isTest
    private static void videoConvertToMovTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'maxWidth' => 56,
            'maxHeight' => 56,
            'preserveAspectRatio' => true,
            'frameRate' => 56,
            'quality' => 56,
            'extendProcessingTime' => true
        };

        SwagClient client;
        SwagVideoApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.videoConvertToMov(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert Video to MP4 format.
     *
     * Automatically detect video file format and convert it to MP4 format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.
     */
    @isTest
    private static void videoConvertToMp4Test() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'maxWidth' => 56,
            'maxHeight' => 56,
            'preserveAspectRatio' => true,
            'frameRate' => 56,
            'quality' => 56,
            'extendProcessingTime' => true
        };

        SwagClient client;
        SwagVideoApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.videoConvertToMp4(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert Video to WEBM format.
     *
     * Automatically detect video file format and convert it to WEBM format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.
     */
    @isTest
    private static void videoConvertToWebmTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'maxWidth' => 56,
            'maxHeight' => 56,
            'preserveAspectRatio' => true,
            'frameRate' => 56,
            'quality' => 56,
            'extendProcessingTime' => true
        };

        SwagClient client;
        SwagVideoApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.videoConvertToWebm(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get detailed information about a video or audio file
     *
     * Retrieve detailed information about a video or audio file, including format, dimensions, file size, bit rate, duration and start time. Compatible with many formats, including: AVI, ASF, FLV, GIF, MP4, MPEG/MPG, Matroska/WEBM, MOV, AIFF, ASF, CAF, MP3, MP2, MP1, Ogg, OMG/OMA, and WAV. Uses 1 API call per 10 MB of file size.
     */
    @isTest
    private static void videoGetInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example'
        };

        SwagClient client;
        SwagVideoApi api;
        Blob response;
        Blob expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"');
        expectedResponse = EncodingUtil.base64Decode('VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu');
        response = (Blob) api.videoGetInfo(params);
        System.assertEquals(expectedResponse, response);
    }
}