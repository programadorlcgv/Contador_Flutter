import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {


  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador App'),
       
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',style: TextStyle(fontSize: 100, fontWeight: FontWeight.w400),),
            Text('$clickCounter click${clickCounter == 1 ? '' : 's'}', style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          FloatingActionButton(

            onPressed: () {
            setState(() {
            clickCounter = 0;
             });
            }, 

            child: Icon(Icons.refresh),
          ),
          
          FloatingActionButton(

            onPressed: () {
            setState(() {
            clickCounter++;
             });
            }, 

            child: Icon(Icons.plus_one_outlined),
          ),

           FloatingActionButton(

            onPressed: () {
            setState(() {
              if(clickCounter == 0) return;
              clickCounter--;
             });
            }, 

            child: Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      )
    );  
  }
}