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
    apiKey: 'AIzaSyC0Pyw54LF-au7ADw361C8ffo5BobgbCow',
    appId: '1:987081171764:web:e6b4a24907170d2b59bb61',
    messagingSenderId: '987081171764',
    projectId: 'final-hackathon-3b445',
    authDomain: 'final-hackathon-3b445.firebaseapp.com',
    storageBucket: 'final-hackathon-3b445.appspot.com',
    measurementId: 'G-2XSESF1F2V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAh5-Jq5xs8sOqed9qZK5efc_kj2NQj4Y0',
    appId: '1:987081171764:android:63326cca671a52e659bb61',
    messagingSenderId: '987081171764',
    projectId: 'final-hackathon-3b445',
    storageBucket: 'final-hackathon-3b445.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDg9vX_RrfyYzeHZYmRbL1dLB4e16ywzLk',
    appId: '1:987081171764:ios:58f2d22f4c8f728359bb61',
    messagingSenderId: '987081171764',
    projectId: 'final-hackathon-3b445',
    storageBucket: 'final-hackathon-3b445.appspot.com',
    iosClientId: '987081171764-pgmiek50c1779nntspal4k025n3i3p17.apps.googleusercontent.com',
    iosBundleId: 'com.example.taskManagementApp',
  );
}
