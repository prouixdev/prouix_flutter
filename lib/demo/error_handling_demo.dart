import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExceptionDemoApp());
}

class ExceptionDemoApp extends StatelessWidget {
  const ExceptionDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExceptionDemoScreen(),
    );
  }
}

class ExceptionDemoScreen extends StatelessWidget {
  const ExceptionDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exception Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Generic Exception 🚧
                try {
                  throw Exception('This is a generic exception');
                } catch (e) {
                  print('Exception caught: $e');
                } finally {
                  print('Finally block executed');
                }
              },
              child: const Text('Generic Exception'),
            ),
            ElevatedButton(
              onPressed: () {
                // FormatException 🎯
                try {
                  throw const FormatException('This is a FormatException');
                } catch (e) {
                  print('FormatException caught: $e');
                } finally {
                  print('Finally block executed');
                }
              },
              child: const Text('FormatException'),
            ),
            ElevatedButton(
              onPressed: () {
                // TimeoutException 🎯
                try {
                  throw TimeoutException('This is a TimeoutException');
                } catch (e) {
                  print('TimeoutException caught: $e');
                } finally {
                  print('Finally block executed');
                }
              },
              child: const Text('TimeoutException'),
            ),
            ElevatedButton(
              onPressed: () {
                // SocketException 🎯
                try {
                  throw const SocketException('This is a SocketException');
                } catch (e) {
                  print('SocketException caught: $e');
                } finally {
                  print('Finally block executed');
                }
              },
              child: const Text('SocketException'),
            ),
            ElevatedButton(
              onPressed: () {
                // Custom Exception 🚨
                try {
                  throw const FormatException('This is a custom error');
                } catch (e, stackTrace) {
                  print('Custom Exception caught: $e');
                  // Handle custom exception if needed
                  _logError('Custom Exception occurred', e, stackTrace);
                } finally {
                  print('Finally block executed');
                }
              },
              child: const Text('Custom Exception'),
            ),
          ],
        ),
      ),
    );
  }
}

// Additional exception handling logic
void _logError(String message, dynamic exception, StackTrace? stackTrace) {
  print('message : $message');
  print('exception : $exception');
  print('stackTrace : $stackTrace');
}
