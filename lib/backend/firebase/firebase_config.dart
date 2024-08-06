import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDlPjLAh7feVRdl32OjJzX77WU5CVvihtk",
            authDomain: "beta-tasks-by5ung.firebaseapp.com",
            projectId: "beta-tasks-by5ung",
            storageBucket: "beta-tasks-by5ung.appspot.com",
            messagingSenderId: "82184741112",
            appId: "1:82184741112:web:40f0e13361bb17bf431b0d"));
  } else {
    await Firebase.initializeApp();
  }
}
