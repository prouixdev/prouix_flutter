import 'package:flutter/material.dart';
import '../utils/exception_utils.dart';

//https://gist.github.com/prouixdev/e06f74f48146be809921dc5a62c20b79
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                try {
                  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes'];
                  print('First fruit: ${fruits[5]}');
                } catch (e, stackTrace) {
                  CustomExceptionHandler.handleException(e, stackTrace);
                }
              },
              child: const Text('Button 1 (List Index Error)'),
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  throw const FormatException('An example FormatException');
                } catch (e, stackTrace) {
                  CustomExceptionHandler.handleException(e, stackTrace);
                }
              },
              child: const Text('Button 2 (FormatException)'),
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  var a = "Hello";
                  var num = a as int;
                  print('Test2: $num');
                } catch (e, stackTrace) {
                  CustomExceptionHandler.handleException(e, stackTrace);
                }
              },
              child: const Text('Button 3 (CastError)'),
            ),
          ],
        ),
      ),
    );
  }
}