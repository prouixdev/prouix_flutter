import 'package:flutter/material.dart';

import '../utils/logger.dart';

class MyLoggingWidget extends StatefulWidget {
  const MyLoggingWidget({super.key});

  @override
  MyLoggingWidgetState createState() => MyLoggingWidgetState();
}

class MyLoggingWidgetState extends State<MyLoggingWidget> {
  @override
  Widget build(BuildContext context) {
    // 👉 Example usage of logDebug with different log levels in a Flutter widget

    // 👉 Log a debug message without specifying the log level
    logDebug('This is a debug message');

    // 👉 Log a debug message explicitly specifying the log level as debug
    logDebug('This is another debug message', level: Level.debug);

    // 👉 Log an info message
    logDebug('This is an info message', level: Level.info);

    // 👉 Log a warning message
    logDebug('This is a warning message', level: Level.warning);

    // 👉 Log an error message
    logDebug('This is an error message', level: Level.error);

    // 👉 Log a "What The Fun" message (WTF)
    logDebug('This is an alien message', level: Level.wtf);

    // Your widget UI goes here
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logging Example'),
      ),
      body: const Center(
        child: Text('Check the console for log messages.'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark(), // Dark theme
    home: const MyLoggingWidget(),
  ));
}