import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '布局',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '布局'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      // 基准线布局
       /*
       baseline：从顶部算起，基准线的位置
       baselineType：alphabetic对齐字符底部的水平线
        */
      body:new Row(
        // 水平等间距排列子组件
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Baseline(
            baseline: 180,
            baselineType: TextBaseline.alphabetic,
            child:new Text(
              '左侧文本',
              style:new TextStyle(fontSize: 30.0)
            )
          ),
          Baseline(
              baseline: 180,
              baselineType: TextBaseline.alphabetic,
              child:new Container(
                width: 50.0,
                height: 50.0,
                color: Colors.red,

              )
          ),
          Baseline(
              baseline: 180,
              baselineType: TextBaseline.alphabetic,
              child:new Text(
                  '右侧文本',
                  style:new TextStyle(fontSize: 30.0)
              )
          ),
        ],
      )
    );
  }
}
