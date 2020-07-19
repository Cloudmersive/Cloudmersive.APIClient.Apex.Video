# videoapi API Client

The video APIs help you convert, encode, and transcode videos.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagVideoApi api = new SwagVideoApi();
SwagClient client = api.getClient();


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

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagVideoApi* | [**videoConvertToGif**](docs/SwagVideoApi.md#videoConvertToGif) | **POST** /video/convert/to/gif | Convert Video to Animated GIF format.
*SwagVideoApi* | [**videoConvertToMov**](docs/SwagVideoApi.md#videoConvertToMov) | **POST** /video/convert/to/mov | Convert Video to MOV format.
*SwagVideoApi* | [**videoConvertToMp4**](docs/SwagVideoApi.md#videoConvertToMp4) | **POST** /video/convert/to/mp4 | Convert Video to MP4 format.
*SwagVideoApi* | [**videoConvertToWebm**](docs/SwagVideoApi.md#videoConvertToWebm) | **POST** /video/convert/to/webm | Convert Video to WEBM format.
*SwagVideoApi* | [**videoGetInfo**](docs/SwagVideoApi.md#videoGetInfo) | **POST** /video/convert/get-info | Get detailed information about a video or audio file


## Documentation for Models

 - [SwagMediaInformation](docs/SwagMediaInformation.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author



