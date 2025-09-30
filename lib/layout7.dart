import 'package:flutter/material.dart';
class Layout7 extends StatelessWidget {
  const Layout7({super.key});

  @override
  Widget build(BuildContext context) {

    // ignore: ussed variable
    int itemCount = 9;
    return Scaffold(
      appBar: AppBar(
        title:
        Text('List panjang',
          style: TextStyle(color: const Color.fromARGB(225, 255, 255, 254)),
        ),
        backgroundColor: Colors.red,
      ),
      body: LayoutBuilder(/*tingggi max perentnya (induk)*/
          builder: (context, constraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: List.generate(
                        itemCount, (index) => Card(
                        color: Colors.amberAccent,
                        margin: EdgeInsets.all(16),
                        child: SizedBox(
                          height: 100,
                          child: Center(
                            child: Text(
                                'item $index'
                            ),
                          )
                        ),
                    )
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
