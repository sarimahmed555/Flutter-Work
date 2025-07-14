import 'package:app/screens/home_screen.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        cardTheme: CardThemeData(color: Colors.white),
      ),
      //  darkTheme: ThemeData.dark(),
      //  themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
