import 'package:flutter_flavor/flutter_flavor.dart';
/***

 * FlavorConfig.instance.name
 * FlavorConfig.instance.variables['baseUrl']


 ***
flutter run --flavor dev --dart-define=FLAVOR=dev

flutter run --flavor staging --dart-define=FLAVOR=staging

flutter run --flavor production --dart-define=FLAVOR=production
***/

class FlavorConfigure {
  /// need to call in main
  static void initConfig(){
    // Detect the flavor dynamically at runtime
    const String? flavor = String.fromEnvironment('FLAVOR');
    switch(flavor){
      case "prod":
        FlavorConfig(
          name: "PROD",
          variables: {
            "baseUrl": "https://api.example.com",
          },
        );
      case "staging":
        FlavorConfig(
          name: "STAGING",
          variables: {
            "baseUrl": "https://api.staging.example.com",
          },
        );
      default:
        FlavorConfig(
          name: "DEV",
          variables: {
            "baseUrl": "https://api.dev.example.com",
          },
        );
    }
  }
  static String getFlavorName(){
    return FlavorConfig.instance.name??'';
  }
  static String getVariable({required String key}){
    return FlavorConfig.instance.variables[key]??'';
  }
}
