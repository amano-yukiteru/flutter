import 'package:flutter/material.dart';

class Layout3 extends StatelessWidget {
  const Layout3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

          // Bagian list vertikal
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text("Map"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Username"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Contact"),
                ),
              ],
            ),
          ),

          // Bagian scroll horizontal
          SizedBox(
            height: 150,
            width: 465,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 160, height: 160, color: Colors.blue, ),
                Container(width: 160, height: 160, color: Colors.amber),
                Container(width: 160, height: 160, color: Colors.green),
                Container(width: 160, height: 160, color: Colors.red),
                Container(width: 160, height: 160, color: Colors.amberAccent),
              ],
            ),
          ),
          Column(children: [SizedBox(height: 20,),],),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(10),
              children: List.generate(9, (index) {
                return Card(
                  // elevation: 3,
                  child: Center(
                    child: Text("Item $index", style: TextStyle(fontSize: 20)),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
