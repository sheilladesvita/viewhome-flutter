import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new myCardLayout( theText: "Tanggal : 20/06/2020 19:00"),
            new myCardLayout( theText: "Tanggal : 20/06/2020 19:00"),
            new myCardLayout( theText: "Tanggal : 20/06/2020 19:00r"),
            //this is not the list example, so when you add new cards, it won't be inside of the list.
          ],
        ), // column
      ), // Container
    ); // scaffold
  }
}

//class SwipeList extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return ListItemWidget();
//  }
//}

// ignore: camel_case_types
class myCardLayout extends StatelessWidget {
//  List No_transaksi = getDummyList();
  // default constructor
  myCardLayout({this.theIcon, this.theText});

  // init variables
  final IconData theIcon;
  final String theText;


  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('NO_TRANSAKSI : '),
              new ListTile(
                title: new Text(
                  theText,
                  style: new TextStyle(fontSize: 15.0),
                ),
                subtitle:
                const Text('ayam serundeng 1x'),
              ),
              new ButtonTheme(
                // make buttons use the appropriate styles for cards
                child: new ButtonBar(
                  children: <Widget>[
                    new FlatButton(
                      color: Colors.grey,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      child: const Text('Batal'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    new FlatButton(
                      color: Colors.red[900],
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      child: const Text('Selesai'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

//  static List getDummyList() {
//    List list = List.generate(10, (i) {
//      return "No_transaksi : ${i + 1}";
//    });
//    return list;
//  }
}