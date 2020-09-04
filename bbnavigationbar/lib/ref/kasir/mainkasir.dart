//import 'file:///F:/TA/Dokumen%20flutter/bbnavigationbar/lib/tenan/secondscreen.dart';
//import 'package:bbnavigationbar/kasir/homekasir.dart';
import 'package:flutter/material.dart';
import 'homekasir.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'JUST-EAT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [ HomeKasir()];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true ,
            title: Text(widget.title,
              style: TextStyle(fontSize: 45, color: Colors.white),
            ),
            leading: Container(
              child:  Image.asset('assets/logo.png'),
              padding: EdgeInsets.all(0.0),
            ),
          ),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onTap,
            currentIndex: _currentIndex,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
//              new BottomNavigationBarItem(
//                icon: Icon(Icons.notifications),
//                title: Text('Notification'),
//              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
              ),
            ])

    );
  }
}