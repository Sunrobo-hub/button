import 'package:flutter/material.dart';
import 'package:nisha/cardScrolling.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp(

  ));
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key}): super(key: key);
  @override
  UserListUI createState() => (UserListUI());

}
class UserListUI extends State {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ducat'),
          backgroundColor: Colors.orange,
        ),
        body: _ListViewUser(),
      ),
    );
  }
}

class _ListViewUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context , index) {
          return Card(
              margin: EdgeInsets.all(10),
              child: Container(
              width: 150,
              padding: EdgeInsets.all(10),
              child: Column(
              children: [
              Text(''),
              SizedBox(height: 10),
            ]
              ),
          ),
              );
        }
        );
    }
  }


