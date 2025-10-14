import 'package:flutter/material.dart';
import 'package:tugas_1/layout.dart';
import 'package:tugas_1/layout1.dart';
import 'package:tugas_1/layout10.dart';
import 'package:tugas_1/layout11.dart';
import 'package:tugas_1/layout2.dart';
import 'package:tugas_1/layout3.dart';
import 'package:tugas_1/layout4.dart';
import 'package:tugas_1/layout5.dart';
import 'package:tugas_1/layout6.dart';
import 'package:tugas_1/layout7.dart';
import 'package:tugas_1/layout8.dart';
import 'package:tugas_1/layout9.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: Layout3(),
    );
  }
}