import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConfig {
  /// need to call in main
  static Future<void> initConfig() async {
    await dotenv.load(fileName: '.env');
  }
  static String getVariable({required String key}) {
    return dotenv.env[key]??'';
  }
}
