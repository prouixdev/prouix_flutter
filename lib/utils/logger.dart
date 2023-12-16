import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


// 👉 Abstraction (Logger interface)
abstract class Logger {
  void logError(String message);
}

//..............................................................................
// libs -> utils -> logger.dart

// Define an enum for the different log levels
enum Level { debug, info, warning, error, wtf }

// Define a logDebug function that logs messages at the specified level
// with colored output for different log levels.
void logDebug(String message, {Level level = Level.info}) {
  // Define ANSI escape codes for different colors
  const String resetColor = '\x1B[0m';
  const String redColor = '\x1B[31m'; // Red
  const String greenColor = '\x1B[32m'; // Green
  const String yellowColor = '\x1B[33m'; // Yellow
  const String cyanColor = '\x1B[36m'; // Cyan

  // Get the current time in hours, minutes, and seconds
  final now = DateTime.now();
  final timeString =
      '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';

  // Only log messages if the app is running in debug mode
  if (kDebugMode) {
    try {
      String logMessage;
      switch (level) {
        case Level.debug:
        // Log debug message in cyan color
          logMessage = '$cyanColor   [DEBUG 📌][$timeString]➡️ $message$resetColor';
          break;
        case Level.info:
        // Log info message in green color
        // logMessage = '$greenColor    [INFO 📌][$timeString]➡️ $message$resetColor';
          logMessage = message;
          break;
        case Level.warning:
        // Log warning message in yellow color
          logMessage = '$yellowColor [WARNING 📌][$timeString]➡️ $message $resetColor';
          break;
        case Level.error:
        // Log error message in red color
          logMessage = '$redColor   [ERROR 🐞][$timeString]➡️ $message $resetColor';
          break;
        case Level.wtf:
        // Log WTF message in red color
          logMessage = '$redColor     [WTF 🐞][$timeString]➡️ $message $resetColor';
          break;
      }
      // Use the DebugPrintCallback to ensure long strings are not truncated
      debugPrint(logMessage);
    } catch (e) {
      // Print any exceptions that occur during logging
      print(e.toString());
    }
  }
}