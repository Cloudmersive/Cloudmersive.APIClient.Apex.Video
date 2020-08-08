/*
 * videoapi
 * The video APIs help you convert, encode, and transcode videos.
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/**
 * The result of splitting a video
 */
public class SwagSplitVideoResult implements Swagger.MappedProperties {
    /**
     * True if the operation was successful, false otherwise
     * @return successful
     */
    public Boolean successful { get; set; }

    /**
     * Individual video files resulting from the split operation
     * @return videos
     */
    public List<SwagVideoFile> videos { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Successful' => 'successful',
        'Videos' => 'videos'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagSplitVideoResult() {
        videos = new List<SwagVideoFile>();
    }

    public static SwagSplitVideoResult getExample() {
        SwagSplitVideoResult splitVideoResult = new SwagSplitVideoResult();
        splitVideoResult.successful = true;
        splitVideoResult.videos = new List<SwagVideoFile>{SwagVideoFile.getExample()};
        return splitVideoResult;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagSplitVideoResult) {
            SwagSplitVideoResult splitVideoResult = (SwagSplitVideoResult) obj;
            return this.successful == splitVideoResult.successful
                && this.videos == splitVideoResult.videos;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (successful == null ? 0 : System.hashCode(successful));
        hashCode = (17 * hashCode) + (videos == null ? 0 : System.hashCode(videos));
        return hashCode;
    }
}
