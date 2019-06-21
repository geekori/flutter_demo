import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '常用组件',
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
      home: MyHomePage(title: '常用组件'),
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
  Widget  build(BuildContext context)  {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
  

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        // 文本组件
        // Text  style
        body: new Column(
          children: <Widget>[
            new Text(
              '蓝色 + 黄色删除线 + 30号字体',
              style: new TextStyle(
                color:Colors.blue,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.yellow,
                fontSize: 30.0

              ),


            ),
            new Text(
              '红色 + 黑色下划线 + 25号字体',
              style: new TextStyle(
                color: Colors.red,
                decoration: TextDecoration.underline,
                fontSize: 25
              ),

            ),
            new Text('蓝色虚线上划线+20号+倾斜',
            style: new TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 20.0,
              fontStyle: FontStyle.italic

            ),
            ),
            new Text(
              '30号 + 粗体 + 斜体',
              style: new TextStyle(

                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 10.0
              ),

            )

          ],

        )






        );
  }
}
