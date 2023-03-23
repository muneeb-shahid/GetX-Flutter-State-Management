abstract class BaseApiServices {
  Future<dynamic> getApi(String url);
  Future<dynamic> postApi(String data, String url);

}
