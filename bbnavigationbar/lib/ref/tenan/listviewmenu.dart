import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListViewMenu extends StatefulWidget {
  _ListViewMenuState createState() => _ListViewMenuState();
}
class _ListViewMenuState extends State<ListViewMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          centerTitle: true ,
          title: Text('DAFTAR MENU',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
//          leading: Container(
//            child:  Image.asset('assets/logo.png'),
//            padding: EdgeInsets.all(0.0),
//          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          ListTile(
            selected:true,
            leading: CircleAvatar(
            radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
              height: 40.0,
              width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Matah"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Ijo"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              child: Image.asset('assets/ayam.jpg',
                height: 40.0,
                width: 40.0,), ),
            title: Text("Ayam Geprek Sambal Bawang"),
            subtitle: Text("Rp.10.000"),
            onTap: (){},
          ),

        ],
      ),
      
    );
  }
}
