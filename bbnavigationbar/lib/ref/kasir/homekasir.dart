import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'scan.dart';

class HomeKasir extends StatefulWidget {
  @override
  _HomeKasirState createState() => _HomeKasirState();
}

class _HomeKasirState extends State<HomeKasir> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          centerTitle: true ,
          title: Text('KASIR',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
      ),
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
          child : new Row(
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
                        builder: (BuildContext context) => ScanScreen(),
                      ),
                    );
                  },
                  child: new Column(
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
                            " Pesanan ",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  textColor: Color(0xFF292929),
                  color: Colors.grey[350]),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 40.0, bottom: 0.0),
                child: new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    padding: EdgeInsets.only(
                        top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ScanScreen(),
                        ),
                      );
                    },
                    child: new Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
