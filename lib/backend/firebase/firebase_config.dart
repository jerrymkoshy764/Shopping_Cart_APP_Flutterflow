import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBtLVvxureVE2EXW87NBL_-Wty7GKVyHnU",
            authDomain: "loginpageweb-6ae95.firebaseapp.com",
            projectId: "loginpageweb-6ae95",
            storageBucket: "loginpageweb-6ae95.firebasestorage.app",
            messagingSenderId: "1080145154018",
            appId: "1:1080145154018:web:da81a535962be04ec273bb",
            measurementId: "G-TJYLQMEHK9"));
  } else {
    await Firebase.initializeApp();
  }
}
