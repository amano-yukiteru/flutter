import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:tugas_1/layout.dart';
import 'package:tugas_1/layout1.dart';
import 'package:tugas_1/layout10.dart';
import 'package:tugas_1/layout11.dart';
import 'package:tugas_1/layout13.dart';
import 'package:tugas_1/layout14.dart';
import 'package:tugas_1/layout2.dart';
import 'package:tugas_1/layout3.dart';
import 'package:tugas_1/layout4.dart';
import 'package:tugas_1/layout5.dart';
import 'package:tugas_1/layout6.dart';
import 'package:tugas_1/layout7.dart';
import 'package:tugas_1/layout8.dart';
import 'package:tugas_1/layout9.dart';

class Layout12 extends StatelessWidget {
  final String nama = 'hendi';
  final String umur = '17';
  const Layout12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Layout10(nama: nama, umur: umur,),));
            },
                child: Text("lanjut ke halaman 2"),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Layout11(),));
            },
                child: Text("lanjut ke halaman 3"),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Layout13(),));
            },
                child: Text("lanjut ke halaman 4"),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Layout14(),));
            },
              child: Text("lanjut ke halaman 5"),
            ),
          ],
        ),
      ),
    );
  }
}
