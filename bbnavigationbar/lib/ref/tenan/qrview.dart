import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
//import 'viewstruck.dart'

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
    var thisInstant = new DateTime.now();
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.white, fontFamily: 'Roboto'),),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
          ),

          Align(
            alignment: Alignment.center,
            child: Container(
              child:  Text('Kantin Mama Cita - Tenan 2',
                style: TextStyle( fontSize: 16.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child:  Text('Date/Time: 02/08/2020 15:00:00',
                style: TextStyle( fontSize: 16.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child:  Text('No_Transaksi: 0001',
                style: TextStyle( fontSize: 16.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child:  Text('_____________________________________________________',
                style: TextStyle( fontWeight: FontWeight.bold,fontSize: 16.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child:  Text('TAGIHAN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Text('_____________________________________________________',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Text('Silahkan berikan struk ini ke bagian kasir untuk membayar',
                style: TextStyle( fontSize: 14.0,),),
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
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Text('Ayam Geprek sambal ijo x1  10000',
                style: TextStyle( fontSize: 14.0,),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35.0),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Text('STRUK INI BUKAN BUKTI PEMBAYARAN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),),
            ),
          ),
        ],
      ),
    );
  }
}