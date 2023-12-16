Your environment has been set up for using Node.js 20.10.0 (x64) and npm.

C:\Users\hari>dart pub global activate flutterfire_cli


Building flutter tool...
Running pub upgrade...
Resolving dependencies... (4.5s)
Got dependencies.
Package flutterfire_cli is currently active at version 0.2.7.
The package flutterfire_cli is already activated at newest available version.
To recompile executables, first run `dart pub global deactivate flutterfire_cli`.
Installed executable flutterfire.
Activated flutterfire_cli 0.2.7.

C:\Users\hari>e:

E:\>cd prouix_flutter

E:\prouix_flutter>flutterfire configure --project=prouixflutter


Building flutter tool...
Running pub upgrade...
Resolving dependencies... (6.3s)
Got dependencies.
i Found 2 Firebase projects. Selecting project prouixflutter.
✔ Which platforms should your configuration support (use arrow keys & space to select)? · android, ios, macos, web
i Firebase android app com.prouix.flutter.prouix_flutter is not registered on Firebase project prouixflutter.
i Registered a new Firebase android app on Firebase project prouixflutter.
i Firebase ios app com.prouix.flutter.prouixFlutter is not registered on Firebase project prouixflutter.
i Registered a new Firebase ios app on Firebase project prouixflutter.
i Firebase macos app com.prouix.flutter.prouixFlutter.RunnerTests is not registered on Firebase project prouixflutter.
i Registered a new Firebase macos app on Firebase project prouixflutter.
i Firebase web app prouix_flutter (web) is not registered on Firebase project prouixflutter.
i Registered a new Firebase web app on Firebase project prouixflutter.

Firebase configuration file lib\firebase_options.dart generated successfully with the following Firebase apps:

Platform  Firebase App Id
web       1:183516945189:web:edbb667e85f50ab2e018cc
android   1:183516945189:android:432ca9e3abf12f5de018cc
ios       1:183516945189:ios:3d1bba67caf7bbb6e018cc
macos     1:183516945189:ios:e9805e322ca8133fe018cc

Learn more about using this file and next steps from the documentation:
 > https://firebase.google.com/docs/flutter/setup

E:\prouix_flutter>
