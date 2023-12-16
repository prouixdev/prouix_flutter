import 'dart:async';
import 'dart:io';
import '../config/app_config.dart';
import 'logger.dart';

class CustomExceptionHandler {

  static void handleException(dynamic exception, StackTrace? stackTrace) {
    if (exception is FormatException) {
      _logError('Format Exception occurred', exception, stackTrace);
      // Handle FormatException-specific behavior if needed
    } else if (exception is UnsupportedError) {
      _logError('Unsupported Error occurred', exception, stackTrace);
      // Handle UnsupportedError-specific behavior if needed
    } else if (exception is ArgumentError) {
      _logError('Argument Error occurred', exception, stackTrace);
      // Handle ArgumentError-specific behavior if needed
    } else if (exception is TimeoutException) {
      _logError('Timeout Exception occurred', exception, stackTrace);
      // Handle TimeoutException-specific behavior if needed
    } else if (exception is SocketException) {
      _logError('Socket Exception occurred', exception, stackTrace);
      // Handle SocketException-specific behavior if needed
    } else {
      // Handle other types of exceptions
      _logError('An unexpected exception occurred', exception, stackTrace);
    }
  }

  static void _logError(String message, dynamic exception, StackTrace? stackTrace) {

     logDebug('.............................................');
     logDebug('❌ Error              ====> $message', level: Level.error);
     logDebug('❌ Exception Details  ====> $exception', level: Level.error);

     // Check each line of the stack trace individually
     if(stackTrace!=null){
       List<String> lines = stackTrace.toString().split('\n');
       for (String line in lines) {
         if (line.contains(AppConfig.appName)) {
           List<String> parts = line.split(' ');
           logDebug('❌ Line Number        ====> ${parts[1].split(":")[0]}', level: Level.error);
           logDebug('❌ File Name          ====> ${parts[0].replaceAll('packages/${AppConfig.appName}/', '')}', level: Level.error);

           logDebug(line);
           return;
         }
       }
       // If "seat" was not found, print the entire stack trace
       logDebug('❌ Stack Trace        ====> $stackTrace', level: Level.error);
     }
  }
}