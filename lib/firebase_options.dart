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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBCruPoF9ZmT0_vwsjArtYHkiYQrBsLUOE',
    appId: '1:715486108654:web:429795e69cf87f4ddd0cff',
    messagingSenderId: '715486108654',
    projectId: 'flutterdam2023',
    authDomain: 'flutterdam2023.firebaseapp.com',
    databaseURL: 'https://flutterdam2023-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'flutterdam2023.appspot.com',
    measurementId: 'G-SKRQPMWYNB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDq-KdEipe84vP5Uzf4sZdQyGEZ_oeXdnQ',
    appId: '1:715486108654:android:4db11ad786b19210dd0cff',
    messagingSenderId: '715486108654',
    projectId: 'flutterdam2023',
    databaseURL: 'https://flutterdam2023-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'flutterdam2023.appspot.com',
  );
}
