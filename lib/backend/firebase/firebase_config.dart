import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDoHNLCj0XR6NAaKMMAzAIFUmOUbM4rFFU",
            authDomain: "jansakti-dev.firebaseapp.com",
            projectId: "jansakti-dev",
            storageBucket: "jansakti-dev.appspot.com",
            messagingSenderId: "802856385303",
            appId: "1:802856385303:web:bd97be90796ff878219552",
            measurementId: "G-CZJ0H44Z4X"));
  } else {
    await Firebase.initializeApp();
  }
}
