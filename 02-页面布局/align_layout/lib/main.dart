import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '填充布局',
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
      home: MyHomePage(title: '填充布局'),
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
      // 对齐布局（Align）
        /*
        1*1

        左上角：0,0
        右上角：1,0
        中心：0.5,0.5
        左下角：0,1
        右下角：1,1

         */
      body:new Stack(
        children: <Widget>[
          new Align(
            alignment:new FractionalOffset(0, 0) ,
            child:new Text('左上角',
            style:TextStyle(
              fontSize: 30,
              color:Color.fromARGB(255,255,0,0)
            ))
          ),
          new Align(
              alignment:new FractionalOffset(1, 0) ,
              child:new Text('右上角',
                  style:TextStyle(
                      fontSize: 30,
                      color:Color.fromARGB(255,0,255,0)
                  ))
          ),
          new Align(
              alignment:FractionalOffset.center ,
              child:new Text('中心',
                  style:TextStyle(
                      fontSize: 30,
                      color:Color.fromARGB(255,0,0,255)
                  ))
          )
          ,
          new Align(
              alignment:FractionalOffset.bottomLeft ,
              child:new Text('左下角',
                  style:TextStyle(
                      fontSize: 30,
                      color:Color.fromARGB(255,255,0,255)
                  ))
          )
          ,
          new Align(
              alignment:FractionalOffset.bottomRight ,
              child:new Text('右下角',
                  style:TextStyle(
                      fontSize: 30,
                      color:Color.fromARGB(255,128,0,128)
                  ))
          )



        ],
      )

    );
  }
}
