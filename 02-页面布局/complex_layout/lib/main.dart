import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '综合布局',
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
      home: MyHomePage(title: '综合布局'),
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
  //状态控制是否显示文本组件
  bool offstage = true;
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

    //显示讲师信息
    Widget teacherContainer = Container(
      padding: const EdgeInsets.all(20.0),//距四周的间距
      child: Row(
        children: <Widget>[
          Expanded(
            child:
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),//与下面文本间隔一定距离
                  child: Row(
                    children: <Widget>[
                      Text(
                        '讲师：',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '李宁',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],

                  )



            ),
          ),
        Container(
        padding: const EdgeInsets.only(bottom: 8.0),//与下面文本间隔一定距离
          child: Row(
            children: <Widget>[
            Icon(
            Icons.star,
            color: Colors.red,
            ),
            Text('1024'),

            ],
          ),
        )
        ],
      ),
    );


    Column buildButtonColumn(IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,//垂直方向大小最小化
        mainAxisAlignment: MainAxisAlignment.center,//垂直方向居中对齐
        children: <Widget>[
          Icon(icon, color: Colors.lightGreen),//上面图标部分
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(//下面文本部分
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen,
              ),
            ),
          )
        ],
      );
    }
    //按钮组部分
    Widget buttonsContainer = Container(
      //容器横向布局
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//水平方向均匀排列每个元素
        children: <Widget>[
          buildButtonColumn(Icons.call, '电话'),
          buildButtonColumn(Icons.details, '详情'),
          buildButtonColumn(Icons.share, '分享'),
        ],
      ),
    );

    // Flutter的特色
    Widget textContainer = Container(
      padding: const EdgeInsets.all(32.0),
      //文本块一定是用'''来引用起来
      child:
      Column(

        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 15.0),
          child: Text(//下面文本部分
            'Flutter的特点',

            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
          ),

          Text(
            '''
        1. 跨平台：主要用于开发Android和iOS App。
        2. 完美的用户体验：Flutter内置的Material Design和Cupertino风格（iOS风格）组件，丰富的motion API，平滑而自然的滑动效果和平台感知，为用户带来全新的体验。 
        3. 响应式框架：使用Flutter的响应式框架和一系列组件，可以轻松构建用户界面。使用功能强大且灵活的API可以解决高难度的UI挑战。 
        4. 支持插件：通过Flutter插件，可以访问平台的本地API，如相机、蓝牙、Wi-Fi等。 
        5. 60fps超高性能：Flutter采用GPU渲染技术，所以性能极高。可以完全胜任游戏的制作。官方称用Flutter开发的应用甚至会超过原生应用的性能。 
        ''',
            softWrap: true,
          ),
        ],
      )

    );

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),


      body:
      ListView(
        children: <Widget>[
          Image.asset(
            'images/flutter.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover, //图片填充整个父容器
          ),
          teacherContainer,
          buttonsContainer,
          textContainer,
        ],
      ),

    );
  }
}
