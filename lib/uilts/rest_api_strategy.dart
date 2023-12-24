import 'package:test_flavors/uilts/api_strategy.dart';

class RestApiStrategy implements ApiStrategy {

  RestApiStrategy();

  @override
  Future<dynamic> callApi(String path, {dynamic data}) async {
    try {
      return await Future.delayed(const Duration(seconds: 1), (){
        return "Rest";
      });
    } catch (error) {
      rethrow;
    }
  }
}