import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '缩放布局',
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
      home: MyHomePage(title: '缩放布局'),
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
      // 缩放布局（FittedBox）
        /*
        BoxFit.none：没有任何填充模式
        BoxFit.fill：不按宽高比例填充，尽可能填充所有区域，里面的内容肯定不会超过外面的区域
        BoxFit.contain：按宽高等比例缩放，里面的内容不会超过外面的容器
        BoxFit.cover：按原始尺寸填充容器，如果原始尺寸比容器大，那么会超过容器的范围
        BoxFit.fitWidth和BoxFit.fitHeight：分别按宽度和高度填充整个容器
        BoxFit.scaleDown：会根据情况缩小范围，有时与contain一样，有时和none一样

         */

        /*
        ImageView
         */
      body: new Container(
        color:Colors.blue,
        width:300,
        height:300,
        child:new FittedBox(
          fit:BoxFit.fitHeight,
          alignment: Alignment.center,
          child:new Text('缩放布局',style:TextStyle(color:Colors.yellow))
        )

      )

    );
  }
}
