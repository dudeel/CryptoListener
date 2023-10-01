import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyC1ZTqAqfYd_M6tDqXh5o-p8fEmW6s5K18',
    appId: '1:398784927338:web:51f835622349286411dc13',
    messagingSenderId: '398784927338',
    projectId: 'crypto-list-test',
    authDomain: 'crypto-list-test.firebaseapp.com',
    storageBucket: 'crypto-list-test.appspot.com',
    measurementId: 'G-1X48X06TN9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAalVy63lYI4yvSVHJw-KqNofoFBr-GZDw',
    appId: '1:398784927338:android:664b863dd0499d8011dc13',
    messagingSenderId: '398784927338',
    projectId: 'crypto-list-test',
    storageBucket: 'crypto-list-test.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOYSLpfF0xxa3P3OOmM1Vc455_Qns6YKQ',
    appId: '1:398784927338:ios:e202a060e7b3630811dc13',
    messagingSenderId: '398784927338',
    projectId: 'crypto-list-test',
    storageBucket: 'crypto-list-test.appspot.com',
    iosBundleId: 'com.example.crypo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOYSLpfF0xxa3P3OOmM1Vc455_Qns6YKQ',
    appId: '1:398784927338:ios:9dae846e4fb684be11dc13',
    messagingSenderId: '398784927338',
    projectId: 'crypto-list-test',
    storageBucket: 'crypto-list-test.appspot.com',
    iosBundleId: 'com.example.crypo.RunnerTests',
  );
}
