import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyASRLYeQ41MKOtpnqWt7HL_7dobcR_Mcxg",
            authDomain: "gooseflutterflow.firebaseapp.com",
            projectId: "gooseflutterflow",
            storageBucket: "gooseflutterflow.appspot.com",
            messagingSenderId: "967571163938",
            appId: "1:967571163938:web:416e14c288ba51453a737b",
            measurementId: "G-KXTZ74M5R8"));
  } else {
    await Firebase.initializeApp();
  }
}
