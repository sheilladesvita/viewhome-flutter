import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
//                backgroundImage: AssetImage('images/protocoder.png'),
              ),
              Text(
                'USER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 25,
                ),
              ),
//              Text(
//                'Welcome',
//                style: TextStyle(
//                  fontSize: 20,
//                  fontFamily: 'SourceSansPro',
//                  color: Colors.red[400],
//                  letterSpacing: 2.5,
//                ),
//              ),
              SizedBox(
                height: 20.0,
                width: 200,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
//              Text("Keep visiting protocoderspoint.com for more contents"),
              Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    title: Text(
                      'Kios Mama Cita',
                      style:
                      TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
                    ),
                  )),
              Card(
                color: Colors.white,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'jl.angrek',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Neucha'),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    '089673****',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Neucha'),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: FlatButton(
                  color: Colors.blueAccent[700],
                  textColor: Colors.white,
                  child: Text('LOG OUT'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}