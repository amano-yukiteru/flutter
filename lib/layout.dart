import 'package:flutter/material.dart';


class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Column(
        children: [
          Image.asset(
            'img/smkypc.png',
            width: 200,
            height: 200,

          ),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column (
                  children: [Icon(Icons.person_off), Text('Hendi Rahmatullo'), SizedBox(height: 100)]
              ),
              Column (
                  children: [Icon(Icons.call), Text('call')]
              ),
              Column(
                  children: [Icon(Icons.map), Text('maps')]
              ),
              Column(
                  children: [Icon(Icons.share), Text('share')]
              ),
              // SizedBox(width: 8,)
            ],
          )
        ],
      ),
    );
  }
}

