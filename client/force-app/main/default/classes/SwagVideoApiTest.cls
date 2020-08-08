@isTest
private class SwagVideoApiTest {
    /**
     * Convert Video to Animated GIF format.
     *
     * Automatically detect video file format and convert it to animated GIF format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB. Default height is 250 pixels, while preserving the video\&#39;s aspect ratio.
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
     * Automatically detect video file format and convert it to MOV format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
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
            'quality' => 56
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
     * Automatically detect video file format and convert it to MP4 format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
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
            'quality' => 56
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
     * Convert Video to PNG Still Frames.
     *
     * Automatically detect video file format and convert it to an array of still frame PNG images. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time.
     */
    @isTest
    private static void videoConvertToStillFramesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'maxWidth' => 56,
            'maxHeight' => 56,
            'framesPerSecond' => Object.getExample()
        };

        SwagClient client;
        SwagVideoApi api;
        SwagStillFramesResult response;
        SwagStillFramesResult expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "TotalFrames" : 0,\r\n  "StillFrames" : [ {\r\n    "Content" : "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu",\r\n    "FrameNumber" : 6,\r\n    "TimeStamp" : "TimeStamp"\r\n  }, {\r\n    "Content" : "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu",\r\n    "FrameNumber" : 6,\r\n    "TimeStamp" : "TimeStamp"\r\n  } ],\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagStillFramesResult.getExample();
        response = (SwagStillFramesResult) api.videoConvertToStillFrames(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert Video to WEBM format.
     *
     * Automatically detect video file format and convert it to WEBM format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
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
            'quality' => 56
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
     * Cut a Video to a Shorter Length
     *
     * Cuts a video to the specified start and end times. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void videoCutVideoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
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
        response = (Blob) api.videoCutVideo(params);
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
        SwagMediaInformation response;
        SwagMediaInformation expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "FileFormatFull" : "FileFormatFull",\r\n  "Size" : 1,\r\n  "ValidFileFormats" : [ "ValidFileFormats", "ValidFileFormats" ],\r\n  "StartTime" : 2.3021358869347655,\r\n  "Height" : 6,\r\n  "Duration" : 5.637376656633329,\r\n  "FileFormat" : "FileFormat",\r\n  "BitRate" : 5,\r\n  "Successful" : true,\r\n  "Width" : 0\r\n}');
        expectedResponse = SwagMediaInformation.getExample();
        response = (SwagMediaInformation) api.videoGetInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resizes a Video Preserving the Original Aspect Ratio.
     *
     * Resizes a video, while maintaining the original aspect ratio and encoding. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void videoResizeVideoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'maxWidth' => 56,
            'maxHeight' => 56,
            'frameRate' => 56,
            'quality' => 56,
            'extension' => 'extension_example'
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
        response = (Blob) api.videoResizeVideo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resizes a Video without Preserving Aspect Ratio.
     *
     * Resizes a video without maintaining original aspect ratio, allowing fully customizable dimensions. May cause image skewing. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void videoResizeVideoSimpleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'maxWidth' => 56,
            'maxHeight' => 56,
            'frameRate' => 56,
            'quality' => 56,
            'extension' => 'extension_example'
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
        response = (Blob) api.videoResizeVideoSimple(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Scan a Video for NSFW content.
     *
     * Automatically detect video file format and scan it for Not Safe For Work (NSFW)/Porn/Racy content. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per frame scanned.
     */
    @isTest
    private static void videoScanForNsfwTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'framesPerSecond' => Object.getExample()
        };

        SwagClient client;
        SwagVideoApi api;
        SwagNsfwResult response;
        SwagNsfwResult expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "TotalFrames" : 5,\r\n  "TotalNsfwFrames" : 1,\r\n  "NsfwScannedFrames" : [ {\r\n    "Score" : 2.3021358869347655,\r\n    "Content" : "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu",\r\n    "FrameNumber" : 5,\r\n    "ClassificationResult" : "ClassificationResult",\r\n    "TimeStamp" : "TimeStamp"\r\n  }, {\r\n    "Score" : 2.3021358869347655,\r\n    "Content" : "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu",\r\n    "FrameNumber" : 5,\r\n    "ClassificationResult" : "ClassificationResult",\r\n    "TimeStamp" : "TimeStamp"\r\n  } ],\r\n  "HighestClassificationResult" : "HighestClassificationResult",\r\n  "TotalRacyFrames" : 6,\r\n  "Successful" : true,\r\n  "HighestScore" : 0.8008281904610115\r\n}');
        expectedResponse = SwagNsfwResult.getExample();
        response = (SwagNsfwResult) api.videoScanForNsfw(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Split a Video into Two Shorter Videos
     *
     * Cuts a video into two videos based on the specified start time. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
     */
    @isTest
    private static void videoSplitVideoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'splitTime' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'inputFile' => Blob.valueOf('Sample text file\nContents'),
            'fileUrl' => 'fileUrl_example',
            'timeSpan' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        SwagClient client;
        SwagVideoApi api;
        SwagSplitVideoResult response;
        SwagSplitVideoResult expectedResponse;

        client = new SwagClient();
        api = new SwagVideoApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Successful" : true,\r\n  "Videos" : [ {\r\n    "VideoNumber" : 0,\r\n    "Content" : "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"\r\n  }, {\r\n    "VideoNumber" : 0,\r\n    "Content" : "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu"\r\n  } ]\r\n}');
        expectedResponse = SwagSplitVideoResult.getExample();
        response = (SwagSplitVideoResult) api.videoSplitVideo(params);
        System.assertEquals(expectedResponse, response);
    }
}