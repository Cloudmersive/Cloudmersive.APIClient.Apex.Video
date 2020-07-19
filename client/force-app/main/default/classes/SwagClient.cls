public class SwagClient extends Swagger.ApiClient {
    public SwagClient() {
        basePath = 'https://api.cloudmersive.com';
        calloutName = 'videoapi';
        authentications.put('Apikey', new Swagger.ApiKeyHeaderAuth('Apikey'));
    }
}
