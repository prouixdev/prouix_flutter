// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDQ6RhsFW40ieD6zg_lR7EnCt8qriINHoM',
    appId: '1:183516945189:web:edbb667e85f50ab2e018cc',
    messagingSenderId: '183516945189',
    projectId: 'prouixflutter',
    authDomain: 'prouixflutter.firebaseapp.com',
    storageBucket: 'prouixflutter.appspot.com',
    measurementId: 'G-706Z2MVXGK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwRO_M6Y1_DbzwWntilzTmCRpvTelnml4',
    appId: '1:183516945189:android:432ca9e3abf12f5de018cc',
    messagingSenderId: '183516945189',
    projectId: 'prouixflutter',
    storageBucket: 'prouixflutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxTdaod0wnOytX7-4HDRHLCXXmkrVjIrM',
    appId: '1:183516945189:ios:3d1bba67caf7bbb6e018cc',
    messagingSenderId: '183516945189',
    projectId: 'prouixflutter',
    storageBucket: 'prouixflutter.appspot.com',
    iosBundleId: 'com.prouix.flutter.prouixFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxTdaod0wnOytX7-4HDRHLCXXmkrVjIrM',
    appId: '1:183516945189:ios:e9805e322ca8133fe018cc',
    messagingSenderId: '183516945189',
    projectId: 'prouixflutter',
    storageBucket: 'prouixflutter.appspot.com',
    iosBundleId: 'com.prouix.flutter.prouixFlutter.RunnerTests',
  );
}