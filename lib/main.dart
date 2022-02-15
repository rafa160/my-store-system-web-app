import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_store_system_app/app_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
      apiKey: "AIzaSyDa9THFgUCepxnTOX1dl-oFDFh9Vq17tLw",
      appId: "1:151089962879:web:740a1da7331829997dc44a",
      messagingSenderId: "151089962879",
      projectId: "my-store-system-app",
    ),
  );
  runApp(AppModule());
}
