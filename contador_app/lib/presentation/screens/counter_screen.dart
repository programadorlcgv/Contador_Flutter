import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10',style: TextStyle(fontSize: 100, fontWeight: FontWeight.w400),),
            Text('10 clicks', style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        child: Icon(Icons.plus_one_outlined),),
    );  
  }
}