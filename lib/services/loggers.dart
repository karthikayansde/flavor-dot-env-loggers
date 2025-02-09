import 'package:logger/logger.dart';

class Loggers{
  static var _logger = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );
  ///Debug
  static void d(dynamic message){
    _logger.d(message);
  }

  ///Trace
  static void t(dynamic message){
    _logger.t(message);
  }

  ///Error
  static void e(dynamic message){
    _logger.e(message);
  }

  ///Info
  static void i(dynamic message){
    _logger.i(message);
  }

  ///Warning
  static void w(dynamic message){
    _logger.w(message);
  }
}