import 'package:flutter/material.dart';

class Layout4 extends StatelessWidget {
  const Layout4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("MyApp"),
      ),


      body: Column(
        children: [
          const CircleAvatar(
            radius: 100, // setengah dari width/height
            backgroundImage: AssetImage('img/hu_tao.png'),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Username"),
                  subtitle: Text("Hu tao"),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Call'),
                  subtitle: Text("+62 812-3456-7890"),
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
