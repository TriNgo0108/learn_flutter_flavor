import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flavors/uilts/api_context.dart';
import 'package:test_flavors/uilts/api_strategy.dart';
import 'package:test_flavors/uilts/graphql_api_strategy.dart';
import 'package:test_flavors/uilts/rest_api_strategy.dart';

import 'flavors.dart';
import 'pages/my_home_page.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiStrategy apiArchitect = F.appFlavor == Flavor.development ? RestApiStrategy() : GraphQLApiStrategy();
    return MultiProvider(
      providers: [
        Provider<ApiContext>(create: (_) => ApiContext(apiArchitect))
      ],
      child: MaterialApp(
        title: F.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: _flavorBanner(
          child: MyHomePage(),
          show: kDebugMode,
        ),
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
        child: child,
        location: BannerLocation.topStart,
        message: F.name,
        color: Colors.green.withOpacity(0.6),
        textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
            letterSpacing: 1.0),
        textDirection: TextDirection.ltr,
      )
          : Container(
        child: child,
      );
}
