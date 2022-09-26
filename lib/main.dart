import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Gordita",
        scaffoldBackgroundColor: Color.fromARGB(250, 255, 255, 255),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 2
          ),
          headlineMedium: TextStyle(
            color: Color.fromARGB(170, 0, 0, 0),
            fontSize: 36,
          ),
          headlineSmall: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.w300
          ),
          bodySmall: TextStyle(
            color: Color.fromARGB(170, 0, 0, 0),
            fontSize: 16,
            fontWeight: FontWeight.w800
          ) 
        )
      ),
      home: const HomeScreen()
    );
  }
}