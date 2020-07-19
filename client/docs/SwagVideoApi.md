# SwagVideoApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videoConvertToGif**](SwagVideoApi.md#videoConvertToGif) | **POST** /video/convert/to/gif | Convert Video to Animated GIF format.
[**videoConvertToMov**](SwagVideoApi.md#videoConvertToMov) | **POST** /video/convert/to/mov | Convert Video to MOV format.
[**videoConvertToMp4**](SwagVideoApi.md#videoConvertToMp4) | **POST** /video/convert/to/mp4 | Convert Video to MP4 format.
[**videoConvertToWebm**](SwagVideoApi.md#videoConvertToWebm) | **POST** /video/convert/to/webm | Convert Video to WEBM format.
[**videoGetInfo**](SwagVideoApi.md#videoGetInfo) | **POST** /video/convert/get-info | Get detailed information about a video or audio file


<a name="videoConvertToGif"></a>
# **videoConvertToGif**
> Blob videoConvertToGif(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, extendProcessingTime, startTime, timeSpan)

Convert Video to Animated GIF format.

Automatically detect video file format and convert it to animated GIF format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB. Default height is 250 pixels, while preserving the video\&#39;s aspect ratio.

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
    'extendProcessingTime' => true,
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
 **inputFile** | **Blob**| Input file to perform the operation on. |
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to 250 pixels. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to 250 pixels. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to 24 frames per second. | [optional]
 **extendProcessingTime** | **Boolean**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional]
 **startTime** | **Datetime**| Optional; Specify the desired starting time of the GIF video in TimeSpan format. | [optional]
 **timeSpan** | **Datetime**| Optional; Specify the desired length of the GIF video in TimeSpan format. Limit is 30 minutes. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoConvertToMov"></a>
# **videoConvertToMov**
> Blob videoConvertToMov(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, quality, extendProcessingTime)

Convert Video to MOV format.

Automatically detect video file format and convert it to MOV format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.

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
    'quality' => 56,
    'extendProcessingTime' => true
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
 **inputFile** | **Blob**| Input file to perform the operation on. |
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]
 **extendProcessingTime** | **Boolean**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoConvertToMp4"></a>
# **videoConvertToMp4**
> Blob videoConvertToMp4(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, quality, extendProcessingTime)

Convert Video to MP4 format.

Automatically detect video file format and convert it to MP4 format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.

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
    'quality' => 56,
    'extendProcessingTime' => true
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
 **inputFile** | **Blob**| Input file to perform the operation on. |
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]
 **extendProcessingTime** | **Boolean**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoConvertToWebm"></a>
# **videoConvertToWebm**
> Blob videoConvertToWebm(inputFile, fileUrl, maxWidth, maxHeight, preserveAspectRatio, frameRate, quality, extendProcessingTime)

Convert Video to WEBM format.

Automatically detect video file format and convert it to WEBM format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.

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
    'quality' => 56,
    'extendProcessingTime' => true
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
 **inputFile** | **Blob**| Input file to perform the operation on. |
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **maxWidth** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional]
 **maxHeight** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional]
 **preserveAspectRatio** | **Boolean**| Optional; If false, the original video\&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional]
 **frameRate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional]
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional]
 **extendProcessingTime** | **Boolean**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="videoGetInfo"></a>
# **videoGetInfo**
> Blob videoGetInfo(inputFile, fileUrl)

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
    Blob result = api.videoGetInfo(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. |
 **fileUrl** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

