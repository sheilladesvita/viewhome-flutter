import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'viewstruck.dart';

class Pesan extends StatefulWidget {
  TextFieldWidget createState() => TextFieldWidget();
}

class TextFieldWidget extends State {
  TextEditingController etKodemenu = new TextEditingController();

  String nKodemenu = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              centerTitle: true ,
              title: Text('PESAN',
              style: TextStyle(fontSize: 35, color: Colors.white),
              ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.notifications),
                  )
                ],
            ),
        ),
      body: Center(
        child: new Container(
        height: 550,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          border: Border.all(
            width: 15,
            color: Colors.blueGrey[100],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
          margin: EdgeInsets.only(top: 10, bottom: 8),
          child : Form(
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
              ),

              Text('INPUT KODE MENU',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),

              TextFormField(
                controller: etKodemenu,
                decoration: InputDecoration(
                  labelText: 'Masukkan Kode ',
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(),
                ),
              ),

              Container(
               alignment: Alignment.center,
                 child: MaterialButton(onPressed: () {
                setState(() {
                  nKodemenu = etKodemenu.text;
                });
              },
                color: Colors.blueAccent[700],
                textColor: Colors.white,
                child: Text('TAMBAH'),
              ),
              ),
              Container(
                height: 60,
//                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
//                  boxShadow: const[
//                    BoxShadow(blurRadius: 10),
//                  ],
                  border: Border.all(
                    width: 15,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 0.0),
                child: Row(
                  children: <Widget>[
                    Text(nKodemenu),
                  ],
                ),
              ),
//              Padding(
//                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//                child: RaisedButton(
//                    color: Colors.blue,
//                    textColor: Colors.white,
//                    splashColor: Colors.blueGrey,
//                    onPressed: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => ),
//                      );
//                    },
//                    child: const Text('SCAN QR CODE')
//                ),
//              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.blueGrey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>GenerateScreen()),
                      );
                    },
                    child: const Text('GENERATE QR CODE')
                ),
              ),
              ],
        ),
        ),
      ),

    ),
    );
//  final nameHolder = TextEditingController();
//  clearTextInput(){
//    nameHolder.clear();
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: PreferredSize(
//          preferredSize: Size.fromHeight(100.0),
//          child: AppBar(
//            centerTitle: true ,
//            title: Text('PESAN',
//              style: TextStyle(fontSize: 35, color: Colors.white),
//            ),
////          leading: Container(
////            child:  Image.asset('assets/logo.png'),
////            padding: EdgeInsets.all(0.0),
////          ),
//          ),
//        ),
//        body: Center(
//           child: new Container(
//            height: 200,
//            width: 300,
//            decoration: BoxDecoration(
//              color: Colors.blueGrey[100],
//              borderRadius: BorderRadius.circular(10),
//            ),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Container(
//                        width: 280,
//                        padding: EdgeInsets.all(10.0),
//                        child: TextFormField(
//                          controller: nameHolder,
//                          textAlign: TextAlign.center,
//                          autocorrect: true,
//                          decoration: InputDecoration(labelText: 'Masukkan Kode Menu',
//                          fillColor: Colors.white,
//                          border: new OutlineInputBorder(
//                            borderRadius: new BorderRadius.circular(0),
//                            borderSide: new BorderSide(),
//                          ),
//                          ),
//                        )
//                    ),
//
//                    RaisedButton(
//                      shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(18.0),
//                          side: BorderSide(color: Colors.blueAccent[700])
//                      ),
//                      onPressed: clearTextInput,
//                      color: Colors.blueAccent[700],
//                      textColor: Colors.white,
//                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
//                      child: Text('TAMBAH'),
//                    ),
//                  ],
//                ),
//           ),
//        ),
//    );
  }
}