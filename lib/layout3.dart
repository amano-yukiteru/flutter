import 'package:flutter/material.dart';

class Layout3 extends StatelessWidget {
  const Layout3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [

            // Bagian list vertikal
            Expanded(
              child: ListView(
                children: const [
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: 160, color: Colors.blue),
                  Container(width: 160, color: Colors.amber),
                  Container(width: 160, color: Colors.green),
                  Container(width: 160, color: Colors.red),
                  Container(width: 160, color: Colors.amberAccent),
                ],
              ),
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return Center(
                    child: Text("Item $index", style: TextStyle(fontSize: 20)),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
