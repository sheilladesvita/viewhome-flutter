import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'package:bbnavigationbar/ref/listviecontrol.dart';
import 'listviewmenu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ),
      body: Center(
        child: new Container(
          height: 450,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          border: Border.all(
            width: 20,
            color: Colors.grey[350],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      child : new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
              elevation: 0.0,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              padding: EdgeInsets.only(
                  top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => CartApp(),
                  ),
                );
              },
              child: new Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Image.asset(
                    'assets/pesanan.png',
                    height: 80.0,
                    width: 80.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        " Order ",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              textColor: Color(0xFF292929),
              color: Colors.grey[350]),
          Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, top: 30.0, bottom: 0.0),
            child: new RaisedButton(
                elevation: 0.0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Demo(),
                  ),
                  );
                },
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image.asset('assets/laporan.png',
                        height: 80.0, width: 80.0),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Text(
                          "Laporan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ))
                  ],
                ),
                textColor: Color(0xFF292929),
                color: Colors.grey[350]),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, top: 30.0, bottom: 0.0),
            child: new RaisedButton(
                elevation: 0.0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                onPressed: () async {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ListViewMenu(),
                    ),
                  );
                },
                child: new Row (
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image.asset(
                      'assets/menu.png',
                      height: 80.0,
                      width: 80.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Text(
                          "Menu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ))
                  ],
                ),
                textColor: Color(0xFF292929),
                color: Colors.grey[350]),
          )
        ],
      ),
    ),
    ),
    );
  }
}
//      Center(child: new Container(
////        height: 450,
////        width: 300,
////        decoration: BoxDecoration(
////          color: Colors.grey[350],
////          border: Border.all(
////            width: 20,
////            color: Colors.grey[350],
////          ),
////          borderRadius: BorderRadius.circular(10),
////        ),
//        child: Container(
//            height: 450,
//            width: 300,
////        ),
//          child: RaisedButton(
//            shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(20),
//            ),
//              child: Image.asset('assets/pesanan.png',
//                  width: 80,
//                    height: 80,
//                    fit: BoxFit.cover),
////              textColor: Colors.transparent,
//              onPressed: () => Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (BuildContext context) => SecondScreen(),
//                  )))),
//    ),

//      )
//
//          child: new Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget> [
//            Column(
//              children: <Widget>[
//                Image.asset('assets/pesanan.png',
//                    width: 80,
//                    height: 80,
//                    fit: BoxFit.cover),
//              ],
//            ),
//            Column(
//              children: <Widget>[
//                Image.asset('assets/laporan.png',
//                    width: 80,
//                    height: 80,
//                    fit: BoxFit.cover),
//              ],
//            ),
//            Column(
//              children: <Widget>[
//                Image.asset('assets/menu.png',
//                    width: 80,
//                    height: 80,
//                    fit: BoxFit.cover),
//              ],
//            )
//          ],
//            ),
//        ),
//      ),
//    );
//  }
//}