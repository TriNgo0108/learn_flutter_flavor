import 'package:test_flavors/uilts/api_strategy.dart';
import 'package:test_flavors/uilts/rest_api_strategy.dart';

import 'graphql_api_strategy.dart';

class ApiContext {
  ApiStrategy apiStrategy;

  ApiContext(this.apiStrategy);

  void Rest() {
    apiStrategy = RestApiStrategy();
  }

  void GraphQl(){
    apiStrategy = GraphQLApiStrategy();
  }
}
