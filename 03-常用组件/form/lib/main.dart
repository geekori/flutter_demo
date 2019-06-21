import 'package:flutter/material.dart';

void main() => runApp(MyApp(



));

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
    GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

    //用户名
    String userName;

    //密码
    String password;

    void login() {
      //读取当前的Form状态
      var loginForm = loginKey.currentState;

      //验证Form表单
      if (loginForm.validate()) {
        loginForm.save();
        print('userName:' + userName + ' password:' + password);
      }
    }


    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        // 表单组件

        body:
        new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(16.0),
              child: new Form(
                key: loginKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(

                      decoration: new InputDecoration(
                        labelText: '请输入用户名',
                      ),
                      // 该方法在单击"登录"按钮时调用
                      onSaved: (value) {
                        userName = value;
                        print("onSaved:$userName");
                      },
                      // 在调用完onSaved方法后，会调用validator方法进行校验
                      validator: (value) {
                        return value.length < 4 ? "用户名长度不够4位" : null;
                      },
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入密码',
                      ),
                      obscureText: true,
                      //验证表单方法
                      validator: (value) {
                        return value.length < 6 ? "密码长度不够6位" : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: login,
                child: new Text(
                  '登录',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],

        ),

    );
  }
}
