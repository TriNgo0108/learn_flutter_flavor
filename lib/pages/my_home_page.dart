import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flavors/uilts/api_context.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  var message;

  

  Widget build(BuildContext context){
    ApiContext api = context.read<ApiContext>();
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Hello ${F.title}',
            ),
            OutlinedButton(onPressed: () async => {
               message = await api.apiStrategy.callApi("test", data: {}),
              debugPrint(message),
              if(message == "Rest"){
                api.GraphQl(),
              }
              else {
                api.Rest()
              }
            }, child: const Text("Change API Architecture"))
          ],
        ),
      ),
    );
  }
}
