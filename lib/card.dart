import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Amazon'),
      ),
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.grey,
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/baby-animals-kitten-puppy-65f9ba498b3e3.jpg"),
            ),
          ),
        ),
      ),
    ),
  ));
}



