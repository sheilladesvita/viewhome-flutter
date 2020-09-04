import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => new _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var _textController = new TextEditingController();
  String _inputErrorText;
  List<String> value = [];
//  String value = 'Hello';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text('PESAN',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child:  Text('INPUT KODE MENU',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, ),),

            ),
          ),

          new ListTile(
            title: new TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Masukkan Kode ',
                errorText: _inputErrorText,
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                ),
              ),
            ),
          ),
          new ListTile(
            title: new RaisedButton(
              child: new Text("Next"),
              onPressed: () {
                var route = new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NextPage(value: _textController.text),
                );
                Navigator.of(context).push(route);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final String value;

  NextPage({Key key, this.value}) : super(key: key);

  @override
  _NextPageState createState() => new _NextPageState();
}

class _NextPageState extends State<NextPage> {
  var _textController = new TextEditingController();
    String value;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail Pesanan"),
      ),
      body: new ListView(
          children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15),
                height: 50,
                color: Colors.blueGrey[50],
                child: new Text("${widget.value}",
                  style: TextStyle(fontSize: 18,),),
              ),
            new ListTile(
              title: new RaisedButton(
                child: new Text("Generate"),
                onPressed: () {
                  var route = new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new QrView(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
            ),
            ],
      ),
    );
  }
}

class QrView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => QrViewState();
}
class QrViewState extends State<QrView> {
  static const double _topSectionTopPadding = 50.0;
  static const double _topSectionBottomPadding = 20.0;
  static const double _topSectionHeight = 100.0;
  GlobalKey globalKey = new GlobalKey();
  final String _dataString = 'HAI QR';

// QrViewState({Key key, @required this.text}) : super(key: key);

  String _inputErrorText;
  final TextEditingController _textController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
          centerTitle: true ,
          title: Text('PESAN',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
      ),
      body: _contentWidget(),
    );
  }
  Future<void> _captureAndSharePng() async {
    try {
      RenderRepaintBoundary boundary = globalKey.currentContext.findRenderObject();
      var image = await boundary.toImage();
      ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData.buffer.asUint8List();
      final tempDir = await getTemporaryDirectory();
      final file = await new File('${tempDir.path}/image.png').create();
      await file.writeAsBytes(pngBytes);
      final channel = const MethodChannel('channel:me.camellabs.share/share');
      channel.invokeMethod('shareFile', 'image.png');
    } catch(e) {
      print(e.toString());
    }
  }
  _contentWidget() {
    final bodyHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).viewInsets.bottom;
    return  Container(
      color: const Color(0xFFFFFFFF),
      child:  Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.black,
              child:  Text('JUST-EAT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child:  Text('Kantin Mama Cita - Tenan 2',
                style: TextStyle( fontSize: 16.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child:  Text('Kantin Mama Cita - Tenan 2',
                style: TextStyle( fontSize: 16.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: _topSectionTopPadding,
              left: 20.0,
              right: 10.0,
              bottom: _topSectionBottomPadding,
            ),
            child:  Container(
              height: _topSectionHeight,
              child:  Center(
                child: RepaintBoundary(
                  key: globalKey,
                  child: QrImage(
                    data: _dataString,
                    size: 100.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}