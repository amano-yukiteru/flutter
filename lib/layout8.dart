import 'package:flutter/material.dart';

class Layout8 extends StatelessWidget {
  const Layout8 ({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(1000, (i) => 'item $i');
    return Scaffold(
      appBar: AppBar(title: const Text('long list')),
      body: ListView.builder(
          itemCount: items.length,

          prototypeItem: ListTile(title: Text(items.first)),
          itemBuilder:(context, index){
            return ListTile(
              leading: const Icon(Icons.list_alt),
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