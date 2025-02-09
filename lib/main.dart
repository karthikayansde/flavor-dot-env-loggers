import 'package:flavor_dot_env_loggers/services/env_config.dart';
import 'package:flavor_dot_env_loggers/services/flavor_configure.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  FlavorConfigure.initConfig();
  await EnvConfig.initConfig();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Flavors",
      home: Scaffold(
        appBar: AppBar(title: Text("Flavor: ${FlavorConfigure.getFlavorName()}")),
        body: Column(
          children: [
            Text("Base URL: ${FlavorConfigure.getVariable(key: "baseUrl")}"),
            Text("Base URL: ${EnvConfig.getVariable(key: "APP_NAME")}"),

          ],
        ),
      ),
    );
  }
}