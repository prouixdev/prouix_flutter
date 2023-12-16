import 'logger.dart';

class ErrorLogger implements Logger {
  @override
  void logError(String message) {
    try {
      // Implement console logging logic here
      logDebug(message, level: Level.error);
    } catch (e) {
      // Handle or log any exceptions that might occur during error logging
      print("ErrorLogger encountered an exception: $e");
    }
  }
}