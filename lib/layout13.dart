import 'dart:ffi';

import 'package:flutter/material.dart';

class Layout13 extends StatefulWidget {
  const Layout13({super.key});

  @override
  State<Layout13> createState() => _Layout13State();
}

class _Layout13State extends State<Layout13> {
  // final String user;
  int counter = 0;
  void icrement(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hendi website', style: TextStyle(color: Colors.white, fontSize: 28),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("nilai $counter", style: TextStyle(fontSize: 28, color: Colors.blue, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: icrement, child: Text('tambah')),
          ],
        ),
      ),
    );
  }
}
