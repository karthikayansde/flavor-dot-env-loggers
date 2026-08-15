import 'package:logger/logger.dart';

class Loggers{
  static var _logger = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );
  ///Debug // Information useful for debugging
  static void d(dynamic message){
    _logger.d(message);
  }

  ///Trace // Extremely detailed diagnostic info
  static void t(dynamic message){
    _logger.t(message);
  }

  ///Error // Critical failures or exceptions
  static void e(dynamic message){
    _logger.e(message);
  }

  ///Info // General app flow updates
  static void i(dynamic message){
    _logger.i(message);
  }

  ///Warning // Potential issues or non-fatal alerts
  static void w(dynamic message){
    _logger.w(message);
  }
  
  ///Fatal // Total crashes or unrecoverable issues
  static void w(dynamic message){
    _logger.w(message);
  }
}
