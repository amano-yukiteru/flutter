import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MyApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 90),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('img/hu_tao.png'),
          ),
          SizedBox(height: 30),
          Column(
            children: const [
              Text(
                'Hendi Rahmatulloh',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text('Web Development'),
              SizedBox(height: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              // 🔹 Tombol Call
              Card(
                child: Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(30, 10, 30, 10),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Colors.blue),
                      Text('Call'),
                    ],
                  ),
                ),
              ),
              // 🔹 Tombol Maps
              Card(
                child: Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(30, 10, 30, 10),
                  child: Row(
                    children: [
                      Icon(Icons.map, color: Colors.green),
                      Text('Maps'),
                    ],
                  ),
                ),
              ),
              Card(

                child: Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(30, 10, 30, 10),
                  child: Row(
                    children: [
                      Icon(Icons.share, color: Colors.orange),
                      Text('Share'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
