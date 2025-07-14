import 'package:flutter/foundation.dart'; // for kIsWeb
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/get_started_screen.dart';
import 'screens/login_screen.dart'; 
import 'screens/splash_screen.dart'; // Import your splash screen
// or your home screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyA_YZWX9KUmgoqX6AiMEp49KetA-W85CIk",
        authDomain: "velvetleashapp-4b8e1.firebaseapp.com",
        projectId: "velvetleashapp-4b8e1",
        storageBucket: "velvetleashapp-4b8e1.firebasestorage.app",
        messagingSenderId: "995535828722",
        appId: "1:995535828722:web:47fa05b0b77bb3dc0e026b",
      ),
    );
  } else {
    await Firebase.initializeApp(); // For Android/iOS
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Velvet Leash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue),
        home: SplashScreen(), // or LoginScreen()
    );
  }
}
