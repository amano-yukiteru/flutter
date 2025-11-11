import 'package:flutter/material.dart';
import 'package:tugas_1/layout11.dart';
import 'package:tugas_1/layout13.dart';

class Layout10 extends StatelessWidget {
  final String nama;
  final String umur;

  const Layout10({super.key, required this.nama, required this.umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
          'nama: $nama, umur :$umur',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('img/hu_tao.png'),
          ),
          Column(
            children: [
              SizedBox(height: 20,),
              Text('Hendi Rahmatulloh', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              SizedBox(height: 0,),
              Text('Frontend Development', style: TextStyle( fontSize: 20),),
              SizedBox(height: 20,),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ElevatedButton.icon(onPressed: () {
                        Navigator.pop(context);
                      },
                        icon: Icon(Icons.call, color: Colors.green,),
                        label: Text('Call', style: TextStyle(color: Colors.green),),
                        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70),),),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Layout11(),),);
                      },
                        icon: Icon(Icons.map),
                        label: Text('Maps'),
                        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70),),),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Layout13(),),);
                      },
                        icon: Icon(Icons.share, color: Colors.blue,),
                        label: Text('Shere', style: TextStyle(color: Colors.blue),),
                        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70),),),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
