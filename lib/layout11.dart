import 'package:flutter/material.dart';

class Layout11 extends StatelessWidget {
  const Layout11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('MyApp', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
      ),
      body: ListView(
         children: <Widget>[
           Card(
             child: ListTile(leading: Icon(Icons.mail_outline), title: Text('Message'),),
           ),
           Card(
             child: ListTile(leading: Icon(Icons.mail_outline), title: Text('Message'),),
           ),
           Card(
             child: ListTile(leading: Icon(Icons.mail_outline), title: Text('Message'),),
           ),
           Card(
             child: ListTile(leading: Icon(Icons.mail_outline), title: Text('Message'),),
           ),
         ],
      ),
    );
  }
}
