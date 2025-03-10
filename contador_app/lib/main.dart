import 'package:contador_app/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue
      ),
      home: Scaffold(
        body: CounterScreen() ,
      )
    );
  }
}

