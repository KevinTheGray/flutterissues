import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _launchNativeView();
            },
            child: Image.asset('assets/download.jpeg'),
          ),
          GestureDetector(
            onTap: () {
              _launchNativeView();
            },
            child: Image.asset('assets/yay.jpeg'),
          ),
        ],
      ),
    );
  }

  void _launchNativeView() {
    MethodChannel('launch').invokeMethod('launch');
  }
}