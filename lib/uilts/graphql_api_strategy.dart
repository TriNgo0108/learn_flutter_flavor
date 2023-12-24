import 'package:test_flavors/uilts/api_strategy.dart';

class GraphQLApiStrategy implements ApiStrategy {


  GraphQLApiStrategy();

  @override
  Future<dynamic> callApi(String path, {dynamic data}) async {
    try {
      return await Future.delayed(const Duration(seconds: 1), (){
        return "GraphQL";
      });
    } catch (error) {
      rethrow;
    }
  }
}