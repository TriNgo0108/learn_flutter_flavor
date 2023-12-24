abstract class ApiStrategy {
  Future<dynamic> callApi(String path, {dynamic data});
}