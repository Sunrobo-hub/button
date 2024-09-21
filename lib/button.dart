import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Sun Robotronics'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("click",
          style: TextStyle(
            color: Colors.white
          ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange
          ),
          onPressed: (){
            print('hello sir');
          },
        ),
      ),
    ),
  ));
}