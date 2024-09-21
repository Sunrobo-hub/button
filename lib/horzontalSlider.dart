import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Horizontal Scrollable Cards')
        ),
        body: HorzontalsliderCardList(),
      ),
    );
  }
}

class HorzontalsliderCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              height: 200,
              width: 150,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Sun Robo'),
                  SizedBox(height: 50),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

