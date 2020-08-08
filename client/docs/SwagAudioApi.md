# SwagAudioApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audioConvertToAac**](SwagAudioApi.md#audioConvertToAac) | **POST** /audio/convert/to/aac | Convert Audio File to AAC format.
[**audioConvertToM4a**](SwagAudioApi.md#audioConvertToM4a) | **POST** /audio/convert/to/m4a | Convert Audio File to M4A format.
[**audioConvertToMp3**](SwagAudioApi.md#audioConvertToMp3) | **POST** /audio/convert/to/mp3 | Convert Audio File to MP3 format.
[**audioConvertToWav**](SwagAudioApi.md#audioConvertToWav) | **POST** /audio/convert/to/wav | Convert Audio File to WAV format.


<a name="audioConvertToAac"></a>
# **audioConvertToAac**
> Blob audioConvertToAac(inputFile, fileUrl, bitRate)

Convert Audio File to AAC format.

Automatically detect audio file format and convert it to AAC format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagAudioApi api = new SwagAudioApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'bitRate' => Object.getExample()
};

try {
    // cross your fingers
    Blob result = api.audioConvertToAac(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **bitRate** | [**Object**](.md)| Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="audioConvertToM4a"></a>
# **audioConvertToM4a**
> Blob audioConvertToM4a(inputFile, fileUrl, bitRate)

Convert Audio File to M4A format.

Automatically detect audio file format and convert it to M4A format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagAudioApi api = new SwagAudioApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'bitRate' => Object.getExample()
};

try {
    // cross your fingers
    Blob result = api.audioConvertToM4a(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **bitRate** | [**Object**](.md)| Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="audioConvertToMp3"></a>
# **audioConvertToMp3**
> Blob audioConvertToMp3(inputFile, fileUrl, bitRate)

Convert Audio File to MP3 format.

Automatically detect audio file format and convert it to MP3 format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagAudioApi api = new SwagAudioApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'bitRate' => Object.getExample()
};

try {
    // cross your fingers
    Blob result = api.audioConvertToMp3(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **bitRate** | [**Object**](.md)| Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="audioConvertToWav"></a>
# **audioConvertToWav**
> Blob audioConvertToWav(inputFile, fileUrl, sampleRate)

Convert Audio File to WAV format.

Automatically detect audio file format and convert it to WAV format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```java
SwagAudioApi api = new SwagAudioApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents'),
    'fileUrl' => 'fileUrl_example',
    'sampleRate' => Object.getExample()
};

try {
    // cross your fingers
    Blob result = api.audioConvertToWav(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input file to perform the operation on. | [optional]
 **fileUrl** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional]
 **sampleRate** | [**Object**](.md)| Optional; Specify the desired sample rate of the converted audio file in kHz. Value may be between 8 and 96. Standard for audio CDs is 44.1, while DVD audio standard is 48. By default, the optimal sample rate will be chosen automatically. | [optional]

### Return type

**Blob**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

