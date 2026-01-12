import 'package:flutter/material.dart';

class count extends StatefulWidget {
  const count({super.key});

  @override
  State<count> createState() => _countState();
}

class _countState extends State<count> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value.toString()),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ElevatedButton(onPressed: (){
            setState(() {
              value ++;
            });
          }, child: Text("Increment")),

              ElevatedButton(onPressed: (){
            setState(() {
              value --;
            });
          }, child: Text("Decrement"))

            ],
          ),

          
        ],
      )
      
    );
  }
}