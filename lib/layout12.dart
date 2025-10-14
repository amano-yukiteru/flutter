import 'package:flutter/material.dart';

class Layout12 extends StatelessWidget {
  const Layout12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
               children: [
                 ListTile(leading: Icon(Icons.account_circle_outlined), )
               ],
            ),
          ),
        ],
      ),
    );
  }
}
