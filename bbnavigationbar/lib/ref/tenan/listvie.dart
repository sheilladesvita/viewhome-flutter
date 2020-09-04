//import 'package:bbnavigationbar/tenan/viewstruck.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'viewstruck.dart';
import 'inputpesanan.dart';
//import 'package:bbnavigationbar/listviecontrol.dart';

List<String> items = [];
final TextEditingController eCrtl = new TextEditingController();
class ListVie extends StatefulWidget {
  ListViewState createState() => ListViewState();
}

class ListViewState extends State<ListVie> {
  String _dataString = "Hello from this QR";
  String _inputErrorText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          centerTitle: true,
          title: Text('PESAN',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),

        ),
      body: Center(
          child: Container(
            height: 650,
            width: 350,
            decoration: BoxDecoration(
//              color: Colors.blueGrey[100],
              border: Border.all(
                width: 5,
                color: Colors.blueGrey[100],
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 8),
            child: Column(
              children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                    ),

                    Text('INPUT KODE MENU',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),

                    new TextField(
                      controller: eCrtl,
                      decoration: InputDecoration(
                        labelText: 'Masukkan Kode ',
                        errorText: _inputErrorText,
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0),
                        ),
                      ),
                      onSubmitted: (text){
                      items.add(text);
                      eCrtl.clear();
                      setState(() {});
                    },
                    ),
                   new Expanded(
                        child: new ListView.separated(
                          padding: const EdgeInsets.all(8),
                            itemCount: items.length,
                            itemBuilder: (BuildContext context, int index){
                          return Container(
                            height: 50,
                               color: Colors.blueGrey[50],
                               child: Text(items[index],
                                   style: TextStyle(fontSize: 18,)
                               ),
                          );
                        },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                        ),
                    ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      splashColor: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => InputPage()),
                        );
                      },
                      child: const Text('GENERATE QR CODE')
                  ),
                ),
                  ],
                 ),
              ),
          ),
    );
  }
}