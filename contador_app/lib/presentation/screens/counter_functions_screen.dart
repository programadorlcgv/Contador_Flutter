
import 'package:flutter/material.dart';
 int clickCounter = 0;

class CounterFuntionsScreen extends StatefulWidget {


  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {

 

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
          _CustomButtom(
            icon: Icons.refresh,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          
           _CustomButtom(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),

           _CustomButtom(
            icon: Icons.exposure_minus_1,
             onPressed: () {
              setState(() {
                if(clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),
        ],
      )
    );  
  }
}

class _CustomButtom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;


  const _CustomButtom({ required this.icon, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
    
      onPressed: onPressed,
      child: Icon(icon),

    );
  }
}