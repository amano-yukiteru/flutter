import 'package:flutter/material.dart';

class Layout9 extends StatelessWidget {
  const Layout9 ({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(1000, (i) => 'item $i');
    return Scaffold(
      appBar: AppBar(title: const Text('list pendek')),
      body: ListView.builder(
          itemCount: items.length,

          prototypeItem: ListTile(title: Text(items.first)),
          itemBuilder:(context, index){
            return ListTile(
              leading: const Icon(Icons.star),
              title: Text(
                items[index],
                style: TextStyle(
                  color: index % 10 == 0 ? Colors.blue : Colors.black,
                ),
              ),
            );
          }
      ),
    );
  }
}