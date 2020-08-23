# SwagVideoApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videoConvertToGif**](SwagVideoApi.md#videoConvertToGif) | **POST** /video/convert/to/gif | Convert Video to Animated GIF format.
[**videoConvertToMov**](SwagVideoApi.md#videoConvertToMov) | **POST** /video/convert/to/mov | Convert Video to MOV format.
[**videoConvertToMp4**](SwagVideoApi.md#videoConvertToMp4) | **POST** /video/convert/to/mp4 | Convert Video to MP4 format.
[**videoConvertToStillFrames**](SwagVideoApi.md#videoConvertToStillFrames) | **POST** /video/convert/to/still-frames | Convert Video to PNG Still Frames.
[**videoConvertToWebm**](SwagVideoApi.md#videoConvertToWebm) | **POST** /video/convert/to/webm | Convert Video to WEBM format.
[**videoCutVideo**](SwagVideoApi.md#videoCutVideo) | **POST** /video/cut | Cut a Video to a Shorter Length
[**videoGetInfo**](SwagVideoApi.md#videoGetInfo) | **POST** /video/convert/get-info | Get detailed information about a video or audio file
[**videoResizeVideo**](SwagVideoApi.md#videoResizeVideo) | **POST** /video/resize/preserveAspectRatio | Resizes a Video Preserving the Original Aspect Ratio.
[**videoResizeVideoSimple**](SwagVideoApi.md#videoResizeVideoSimple) | **POST** /video/resize/target | Resizes a Video without Preserving Aspect Ratio.
[**videoScanForNsfw**](SwagVideoApi.md#videoScanForNsfw) | **POST** /video/scan/nsfw | Scan a Video for NSFW content.
[**videoSplitVideo**](SwagVideoApi.md#videoSplitVideo) | **POST** /video/split | Split a Video into Two Shorter Videos


<a name="videoConvertToGif"></a>
# **videoConvertToGif**
> Blob videoConvertToGif(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, startTime, timeSpan)

Convert Video to Animated GIF format.

Automatically detect video file format and convert it to animated GIF format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB. Default height is 250 pixels, while preserving the video\&#39;s aspect ratio.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

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

try {
    // cross your fingers
    Blob result = api.videoConvertToGif(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to 250 pixels, maximum is 500 pixels. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to 250 pixels, maximum is 500 pixels. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to 24 frames per second. | [optional]
 **startTime** | **Datetime**| Optional; Specify the desired starting time of the GIF video in TimeSpan format. | [optional]
 **timeSpan** | **Datetime**| Optional; Specify the desired length of the GIF video in TimeSpan format. Limit is 30 seconds. Default is 10 seconds. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoConvertToMov"></a>
# **videoConvertToMov**
> Blob videoConvertToMov(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, quality)

Convert Video to MOV format.

Automatically detect video file format and convert it to MOV format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'maxWidth' => 56,
    'maxHeight' => 56,
    'preserveAspectRatio' => true,
    'frameRate' => 56,
    'quality' => 56
};

try {
    // cross your fingers
    Blob result = api.videoConvertToMov(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoConvertToMp4"></a>
# **videoConvertToMp4**
> Blob videoConvertToMp4(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, quality)

Convert Video to MP4 format.

Automatically detect video file format and convert it to MP4 format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'maxWidth' => 56,
    'maxHeight' => 56,
    'preserveAspectRatio' => true,
    'frameRate' => 56,
    'quality' => 56
};

try {
    // cross your fingers
    Blob result = api.videoConvertToMp4(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoConvertToStillFrames"></a>
# **videoConvertToStillFrames**
> SwagStillFramesResult videoConvertToStillFrames(inputFile, fileUrl, maxWidth, maxHeight, framesPerSecond)

Convert Video to PNG Still Frames.

Automatically detect video file format and convert it to an array of still frame PNG images. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'maxWidth' => 56,
    'maxHeight' => 56,
    'framesPerSecond' => 8.14
};

try {
    // cross your fingers
    SwagStillFramesResult result = api.videoConvertToStillFrames(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **framesPerSecond** | **Double**| Optional; How many video frames per second to be returned as PNG images. Minimum value is 0.1, maximum is 60. Default is 1 frame per second. Maximum of 2000 total frames. | [optional]

### Return type

[**SwagStillFramesResult**](SwagStillFramesResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoConvertToWebm"></a>
# **videoConvertToWebm**
> Blob videoConvertToWebm(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, quality)

Convert Video to WEBM format.

Automatically detect video file format and convert it to WEBM format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'maxWidth' => 56,
    'maxHeight' => 56,
    'preserveAspectRatio' => true,
    'frameRate' => 56,
    'quality' => 56
};

try {
    // cross your fingers
    Blob result = api.videoConvertToWebm(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoCutVideo"></a>
# **videoCutVideo**
> Blob videoCutVideo(inputFile, fileUrl, startTime, timeSpan)

Cut a Video to a Shorter Length

Cuts a video to the specified start and end times. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'startTime' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
    'timeSpan' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
};

try {
    // cross your fingers
    Blob result = api.videoCutVideo(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **startTime** | **Datetime**| Optional; Specify the desired starting time of the cut video in TimeSpan format. | [optional]
 **timeSpan** | **Datetime**| Optional; Specify the desired length of the cut video in TimeSpan format. Leave blank to include the rest of the video. Maximum time is 4 hours. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoGetInfo"></a>
# **videoGetInfo**
> SwagMediaInformation videoGetInfo(inputFile, fileUrl)

Get detailed information about a video or audio file

Retrieve detailed information about a video or audio file, including format, dimensions, file size, bit rate, duration and start time. Compatible with many formats, including: AVI, ASF, FLV, GIF, MP4, MPEG/MPG, Matroska/WEBM, MOV, AIFF, ASF, CAF, MP3, MP2, MP1, Ogg, OMG/OMA, and WAV. Uses 1 API call per 10 MB of file size.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example'
};

try {
    // cross your fingers
    SwagMediaInformation result = api.videoGetInfo(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]

### Return type

[**SwagMediaInformation**](SwagMediaInformation.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoResizeVideo"></a>
# **videoResizeVideo**
> Blob videoResizeVideo(inputFile, fileUrl, maxWidth, maxHeight, frameRate, quality, extension)

Resizes a Video Preserving the Original Aspect Ratio.

Resizes a video, while maintaining the original aspect ratio and encoding. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'maxWidth' => 56,
    'maxHeight' => 56,
    'frameRate' => 56,
    'quality' => 56,
    'extension' => 'extension_example'
};

try {
    // cross your fingers
    Blob result = api.videoResizeVideo(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]
 **extension** | **String**| Optional; Specify the file extension of the input video. This is recommended when inputting a file directly, without a file name. If no file name is available and no extension is provided, the extension will be inferred from the file data, which may cause a different extension to be used in the output. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoResizeVideoSimple"></a>
# **videoResizeVideoSimple**
> Blob videoResizeVideoSimple(inputFile, fileUrl, maxWidth, maxHeight, frameRate, quality, extension)

Resizes a Video without Preserving Aspect Ratio.

Resizes a video without maintaining original aspect ratio, allowing fully customizable dimensions. May cause image skewing. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'maxWidth' => 56,
    'maxHeight' => 56,
    'frameRate' => 56,
    'quality' => 56,
    'extension' => 'extension_example'
};

try {
    // cross your fingers
    Blob result = api.videoResizeVideoSimple(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]
 **extension** | **String**| Optional; Specify the file extension of the input video. This is recommended when inputting a file directly, without a file name. If no file name is available and no extension is provided, the extension will be inferred from the file data, which may cause a different extension to be used in the output. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoScanForNsfw"></a>
# **videoScanForNsfw**
> SwagNsfwResult videoScanForNsfw(inputFile, fileUrl, framesPerSecond)

Scan a Video for NSFW content.

Automatically detect video file format and scan it for Not Safe For Work (NSFW)/Porn/Racy content. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per frame scanned.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'framesPerSecond' => 8.14
};

try {
    // cross your fingers
    SwagNsfwResult result = api.videoScanForNsfw(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being scanned. Use this option for files larger than 2GB. | [optional]
 **framesPerSecond** | **Double**| Optional; How many video frames per second to be scanned. Minimum value is 0.05 (1 frame per 20 seconds), maximum is 1. Default is 0.33 frame per second (1 frame scanned every 3 seconds). Maximum of 1000 total frames can be scanned, potentially adjusting the framerate for longer videos. | [optional]

### Return type

[**SwagNsfwResult**](SwagNsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoSplitVideo"></a>
# **videoSplitVideo**
> SwagSplitVideoResult videoSplitVideo(splitTime, inputFile, fileUrl, timeSpan)

Split a Video into Two Shorter Videos

Cuts a video into two videos based on the specified start time. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'splitTime' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'timeSpan' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
};

try {
    // cross your fingers
    SwagSplitVideoResult result = api.videoSplitVideo(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **splitTime** | **Datetime**| Specify the desired time at which to split the video in TimeSpan format. |
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **timeSpan** | **Datetime**| Optional; Specify the desired length of the second video in TimeSpan format. Leave blank to include the rest of the video. Maximum time is 4 hours. | [optional]

### Return type

[**SwagSplitVideoResult**](SwagSplitVideoResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

