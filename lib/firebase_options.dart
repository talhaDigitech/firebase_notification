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
    apiKey: 'AIzaSyDk0mn2KXonqAeLKlApY-kDPk87aSM1Wwk',
    appId: '1:664625352383:web:ce9a53f0f4214538dd800a',
    messagingSenderId: '664625352383',
    projectId: 'testap-65c22',
    authDomain: 'testap-65c22.firebaseapp.com',
    storageBucket: 'testap-65c22.firebasestorage.app',
    measurementId: 'G-FWFC5KKZBW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9pZ9nffxDgSnQ2e8CKx0Rj7aEmsHN7Ts',
    appId: '1:664625352383:android:1fcd0b73711ec525dd800a',
    messagingSenderId: '664625352383',
    projectId: 'testap-65c22',
    storageBucket: 'testap-65c22.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcPvfFLoLt7-wvC6Xa0Sa5ZSrh9npdpSU',
    appId: '1:664625352383:ios:cabbfff2b93cb7eadd800a',
    messagingSenderId: '664625352383',
    projectId: 'testap-65c22',
    storageBucket: 'testap-65c22.firebasestorage.app',
    iosBundleId: 'com.example.testap',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcPvfFLoLt7-wvC6Xa0Sa5ZSrh9npdpSU',
    appId: '1:664625352383:ios:cabbfff2b93cb7eadd800a',
    messagingSenderId: '664625352383',
    projectId: 'testap-65c22',
    storageBucket: 'testap-65c22.firebasestorage.app',
    iosBundleId: 'com.example.testap',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDk0mn2KXonqAeLKlApY-kDPk87aSM1Wwk',
    appId: '1:664625352383:web:c96ba20132e54f4edd800a',
    messagingSenderId: '664625352383',
    projectId: 'testap-65c22',
    authDomain: 'testap-65c22.firebaseapp.com',
    storageBucket: 'testap-65c22.firebasestorage.app',
    measurementId: 'G-VREBDMMP7C',
  );
}