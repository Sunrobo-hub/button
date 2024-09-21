import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Login());


}
_lunchUrl()async{
  var url= Uri.parse("https://www.geeksforgeeks.org/");
 if(await canLaunchUrl(url)){
   await launchUrl(url);
 }else{
   throw'could not launch url';
 }

}
class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
            appBar: AppBar(
              title: Text('login page'),
            ),
            body: Center(
              child: ElevatedButton(
                child: Text('open Url'),
                onPressed: _lunchUrl
              ),
            )
        )
    );

  }
}
