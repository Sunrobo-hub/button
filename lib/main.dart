import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Amazon'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Click',
          style: TextStyle(
            color: Colors.blue
          ),
          ),
          onPressed: () {
            print('Sun Robotronics');
            Fluttertoast.showToast(
                msg:'Hello Sir');
          }
        ),
      ),
    ),
  ));
}
