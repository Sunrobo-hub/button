import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      title: ("Scroll bar design"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("User Information",
          ),
        ),
        body: ScrollCardList(

      )
      ),
    );
  }
  }
class ScrollCardList extends StatelessWidget{
  @override

  Widget build(BuildContext Context){
   return ListView.builder(
     itemCount: 20,
     itemBuilder:(Context,index){
       return Card(
         margin: EdgeInsets.all(10),
         elevation:5,
         child: Padding(
           padding: EdgeInsets.all(15),
           child:Column(
             children: [
               Text("Nisha",
                 style: TextStyle(
                   fontSize: 12,
                   fontWeight: FontWeight.bold,
                   color: Colors.lightBlue,
                 )
               ),
               SizedBox(
                 height: 10,
               ),
               Text('Ghaziabad'),
             ],
           ),
            ),
       );
     }
   );
  }
}

