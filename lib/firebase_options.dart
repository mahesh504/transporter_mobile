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
    apiKey: 'AIzaSyDQYreEp0Rub4GQYKoWzQt1ozf-3MoMEe8',
    appId: '1:357601743665:web:f9bbbea5cdb6361056d610',
    messagingSenderId: '357601743665',
    projectId: 'transporter-v1',
    authDomain: 'transporter-v1.firebaseapp.com',
    storageBucket: 'transporter-v1.appspot.com',
    measurementId: 'G-SJPS615K9J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7buQSsxn0T0QdzUACvgzR8tXCBAY1hAk',
    appId: '1:357601743665:android:ad1c8ec9b7031c0756d610',
    messagingSenderId: '357601743665',
    projectId: 'transporter-v1',
    storageBucket: 'transporter-v1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBctCB2dybPWBD5JJPwBmYEKv1NR167gKI',
    appId: '1:357601743665:ios:cab9b800a902aab156d610',
    messagingSenderId: '357601743665',
    projectId: 'transporter-v1',
    storageBucket: 'transporter-v1.appspot.com',
    iosClientId: '357601743665-u79nstt7gaauvte43p7d7hehk5ol30sn.apps.googleusercontent.com',
    iosBundleId: 'com.app.transporter.transporter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBctCB2dybPWBD5JJPwBmYEKv1NR167gKI',
    appId: '1:357601743665:ios:cab9b800a902aab156d610',
    messagingSenderId: '357601743665',
    projectId: 'transporter-v1',
    storageBucket: 'transporter-v1.appspot.com',
    iosClientId: '357601743665-u79nstt7gaauvte43p7d7hehk5ol30sn.apps.googleusercontent.com',
    iosBundleId: 'com.app.transporter.transporter',
  );
}