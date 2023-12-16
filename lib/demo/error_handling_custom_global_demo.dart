import 'package:flutter/material.dart';
import '../utils/exception_utils.dart';

void main() {


  // 🚨 Handle the error globally using FlutterError.onError callback
  FlutterError.onError = (FlutterErrorDetails details) {

    // Custom utils : Exception handling examples
    CustomExceptionHandler.handleException(details.exception, details.stack);

    /*
    // Additional logging for detailed error information
    print('**************************************************');
    print('* Error Summary : ${details.summary}');
    print('* Exception     : ${details.exception}');
    print('* Context       : ${details.context}');
    if (details.library != null) {
      print('* Library       : ${details.library}');
    }
    if (details.stack != null) {
      print('* Stack Trace   : ${details.stack}');
    }
    print('**************************************************');
    */

    // 🌐 Optionally, store the error in the API or perform additional actions
  };








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
                List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes'];
                print('First fruit: ${fruits[5]}');
              },
              child: const Text('Button 1 (List Index Error)'),
            ),
            ElevatedButton(
              onPressed: () {
                throw const FormatException('An example FormatException');
              },
              child: const Text('Button 2 (FormatException)'),
            ),
            ElevatedButton(
              onPressed: () {
                var a = "Hello";
                var num = a as int;
                print('Test2: $num');
              },
              child: const Text('Button 3 (CastError)'),
            ),
          ],
        ),
      ),
    );
  }
}