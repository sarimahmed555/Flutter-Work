import 'package:app/screens/call_screen.dart';
import 'package:app/screens/chat_screen.dart';
import 'package:app/screens/communities_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/main/main_screen.dart';
import 'package:app/screens/status_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
     scaffoldBackgroundColor: const Color.fromARGB(255, 15, 15, 15),
        appBarTheme: AppBarTheme(backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
            cardTheme: CardThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
        listTileTheme: ListTileThemeData(
          textColor: Colors.white,
        )
       
      ),
   
      home: MainScreen(),
    );
  }
}
