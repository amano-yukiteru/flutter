import 'package:flutter/material.dart';

class Layout10 extends StatelessWidget {
  const Layout10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
          'MyApp',
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
                      ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.call, color: Colors.green,), label: Text('Call', style: TextStyle(color: Colors.green),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70)),),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.map), label: Text('Maps'), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70),),),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.share, color: Colors.blue,), label: Text('Shere', style: TextStyle(color: Colors.blue),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70),),),
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
