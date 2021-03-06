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
 * The result of scanning a video file for NSFW content
 */
public class SwagNsfwResult implements Swagger.MappedProperties {
    /**
     * True if the operation was successful, false otherwise
     * @return successful
     */
    public Boolean successful { get; set; }

    /**
     * The highest NSFW classification of the video
     * @return highestClassificationResult
     */
    public String highestClassificationResult { get; set; }

    /**
     * The highest NSFW score out of all frames scanned
     * @return highestScore
     */
    public Double highestScore { get; set; }

    /**
     * The total number of potentially "racy" frames.
     * @return totalRacyFrames
     */
    public Integer totalRacyFrames { get; set; }

    /**
     * The total number of frames with high probability of NSFW.
     * @return totalNsfwFrames
     */
    public Integer totalNsfwFrames { get; set; }

    /**
     * The total number of frames scanned
     * @return totalFrames
     */
    public Integer totalFrames { get; set; }

    /**
     * The NSFW scanning results for each frame
     * @return nsfwScannedFrames
     */
    public List<SwagNsfwScannedFrame> nsfwScannedFrames { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Successful' => 'successful',
        'HighestClassificationResult' => 'highestClassificationResult',
        'HighestScore' => 'highestScore',
        'TotalRacyFrames' => 'totalRacyFrames',
        'TotalNsfwFrames' => 'totalNsfwFrames',
        'TotalFrames' => 'totalFrames',
        'NsfwScannedFrames' => 'nsfwScannedFrames'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagNsfwResult() {
        nsfwScannedFrames = new List<SwagNsfwScannedFrame>();
    }

    public static SwagNsfwResult getExample() {
        SwagNsfwResult nsfwResult = new SwagNsfwResult();
        nsfwResult.successful = true;
        nsfwResult.highestClassificationResult = 'aeiou';
        nsfwResult.highestScore = 1.3579;
        nsfwResult.totalRacyFrames = 123;
        nsfwResult.totalNsfwFrames = 123;
        nsfwResult.totalFrames = 123;
        nsfwResult.nsfwScannedFrames = new List<SwagNsfwScannedFrame>{SwagNsfwScannedFrame.getExample()};
        return nsfwResult;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagNsfwResult) {
            SwagNsfwResult nsfwResult = (SwagNsfwResult) obj;
            return this.successful == nsfwResult.successful
                && this.highestClassificationResult == nsfwResult.highestClassificationResult
                && this.highestScore == nsfwResult.highestScore
                && this.totalRacyFrames == nsfwResult.totalRacyFrames
                && this.totalNsfwFrames == nsfwResult.totalNsfwFrames
                && this.totalFrames == nsfwResult.totalFrames
                && this.nsfwScannedFrames == nsfwResult.nsfwScannedFrames;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (successful == null ? 0 : System.hashCode(successful));
        hashCode = (17 * hashCode) + (highestClassificationResult == null ? 0 : System.hashCode(highestClassificationResult));
        hashCode = (17 * hashCode) + (highestScore == null ? 0 : System.hashCode(highestScore));
        hashCode = (17 * hashCode) + (totalRacyFrames == null ? 0 : System.hashCode(totalRacyFrames));
        hashCode = (17 * hashCode) + (totalNsfwFrames == null ? 0 : System.hashCode(totalNsfwFrames));
        hashCode = (17 * hashCode) + (totalFrames == null ? 0 : System.hashCode(totalFrames));
        hashCode = (17 * hashCode) + (nsfwScannedFrames == null ? 0 : System.hashCode(nsfwScannedFrames));
        return hashCode;
    }
}

