import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
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
    apiKey: 'AIzaSyDlNdNJZhIfdoM1rXXYRHjVjs4-1dlLb9I',
    appId: '1:834787129611:web:b34d28004f81cd57710a0e',
    messagingSenderId: '834787129611',
    projectId: 'notificacion-app-73bd4',
    authDomain: 'notificacion-app-73bd4.firebaseapp.com',
    storageBucket: 'notificacion-app-73bd4.appspot.com',
    measurementId: 'G-Z999FLBCY5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxoJcHHzYu_ybshXmjHlsBjC5vRdPzMBI',
    appId: '1:834787129611:android:4bdf988af5923445710a0e',
    messagingSenderId: '834787129611',
    projectId: 'notificacion-app-73bd4',
    storageBucket: 'notificacion-app-73bd4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVM_VWpb2wIOCk4W92I3ASVYpRPFzGIpA',
    appId: '1:834787129611:ios:3af4d5c055f5abfa710a0e',
    messagingSenderId: '834787129611',
    projectId: 'notificacion-app-73bd4',
    storageBucket: 'notificacion-app-73bd4.appspot.com',
    iosClientId:
        '834787129611-plrlsn25m5epna273vhs4lc424roc685.apps.googleusercontent.com',
    iosBundleId: 'com.example.notificationapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVM_VWpb2wIOCk4W92I3ASVYpRPFzGIpA',
    appId: '1:834787129611:ios:93482fbc8af9e446710a0e',
    messagingSenderId: '834787129611',
    projectId: 'notificacion-app-73bd4',
    storageBucket: 'notificacion-app-73bd4.appspot.com',
    iosClientId:
        '834787129611-vgtcbrlpjfeank6iuhgdaqe1oi58pugk.apps.googleusercontent.com',
    iosBundleId: 'com.example.notificationapp.RunnerTests',
  );
}
