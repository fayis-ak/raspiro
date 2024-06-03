// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCM7-CpF7RsqZhRQa56un_rXWnaGcCCCCw',
    appId: '1:530240481675:web:b49ecc64f6b118bb2be78e',
    messagingSenderId: '530240481675',
    projectId: 'respiro-1930b',
    authDomain: 'respiro-1930b.firebaseapp.com',
    storageBucket: 'respiro-1930b.appspot.com',
    measurementId: 'G-JF734DFHNK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjIYyJMLB7gEKXSZ5jNPWkcRVXeWivr1s',
    appId: '1:530240481675:android:98b1fd4a257517d62be78e',
    messagingSenderId: '530240481675',
    projectId: 'respiro-1930b',
    storageBucket: 'respiro-1930b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPf-lPlGZyM4MYQWabBSW3nJjZETz5oU8',
    appId: '1:530240481675:ios:e1bb79b1bef44f302be78e',
    messagingSenderId: '530240481675',
    projectId: 'respiro-1930b',
    storageBucket: 'respiro-1930b.appspot.com',
    iosBundleId: 'com.example.respiroProjectfltr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPf-lPlGZyM4MYQWabBSW3nJjZETz5oU8',
    appId: '1:530240481675:ios:e1bb79b1bef44f302be78e',
    messagingSenderId: '530240481675',
    projectId: 'respiro-1930b',
    storageBucket: 'respiro-1930b.appspot.com',
    iosBundleId: 'com.example.respiroProjectfltr',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCM7-CpF7RsqZhRQa56un_rXWnaGcCCCCw',
    appId: '1:530240481675:web:d28d4ca70ea49d6a2be78e',
    messagingSenderId: '530240481675',
    projectId: 'respiro-1930b',
    authDomain: 'respiro-1930b.firebaseapp.com',
    storageBucket: 'respiro-1930b.appspot.com',
    measurementId: 'G-2DHJDW5SGB',
  );
}
