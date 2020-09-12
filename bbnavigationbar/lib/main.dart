import 'package:bbnavigationbar/src/view.dart'
    show App, PujasExampleApp, runApp;

void main() => runApp(MyApp());

class MyApp extends App {
  @override
  createView() => PujasExampleApp();
}