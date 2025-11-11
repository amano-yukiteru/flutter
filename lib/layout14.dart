import 'package:flutter/material.dart';
import 'package:tugas_1/layout10.dart';
import 'package:tugas_1/layout11.dart';
import 'package:tugas_1/layout13.dart';

class Layout14 extends StatefulWidget {
  const Layout14({super.key});

  @override
  State<Layout14> createState() => _Layout14State();
}

class _Layout14State extends State<Layout14> {
  final  formkey = GlobalKey<FormState>();
  final TextEditingController nameControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Text('nama'),
                TextFormField(
                    controller: nameControler,
                    decoration: InputDecoration(label: Text("Nama"), /*hint: Text("nama")*/),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "nama tidak boleh kosong";
                      }
                      return null;
                    }
                ),
                TextFormField(
                    controller: nameControler,
                    decoration: InputDecoration(label: Text("umur"), /*hint: Text("nama")*/),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "nama tidak boleh kosong";
                      }
                      return null;
                    }
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    if(formkey.currentState!.validate()){
                      String nama = nameControler.text;
                      String umur = nameControler.text;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Layout10(nama: nama, umur: umur),),);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(nama)));
                    }
                  },
                  child: Text("input"),
                ),
              ],
            )
        ),
      ),
    );
  }
}
