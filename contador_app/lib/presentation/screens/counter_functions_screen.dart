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
        leading: IconButton(
          onPressed: () {
            setState(() {
              clickCounter = 0;
            });
          }, 
          icon: Icon(Icons.refresh)
        ),
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                clickCounter--;
              });
            }, icon: Icon(Icons.exposure_minus_1_rounded)
          ),IconButton(
            onPressed: (){
              setState(() {
                clickCounter++;
              });
            }, icon: Icon(Icons.plus_one_outlined))
        ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
          
        }, 
        child: Icon(Icons.plus_one_outlined),
      ),
    );  
  }
}