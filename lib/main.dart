import 'package:detective/game/circleClose/CircleClose.dart';
import 'package:detective/GameList.dart';
import 'package:flutter/material.dart';
import 'UserInfoPage.dart';
import 'model/UserInfo.dart';

UserInfo userInfo = UserInfo();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      routes: {
        '/login': (context) => Login(),
        '/userInfo': (context) => UserInfoPage(userInfo: userInfo),
        '/gameList': (context) => GameList(userInfo: userInfo,),
        '/circleClose': (context) => CircelClose(userInfo: userInfo),
      },
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String userName = 'Emily';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Login',
              textAlign: TextAlign.center,),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('User: '),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Password: '),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      userInfo.setUserName(userName);
                    });
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return GameList(userInfo: userInfo,);
                      },
                    ));
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}