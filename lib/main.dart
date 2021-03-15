import 'package:flutter/material.dart';
import 'package:practice_flutter/sub/login_view.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // #docregion titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ID',
              ),
            ),
            padding: EdgeInsets.all(10),
          ),
          Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            padding: EdgeInsets.all(10),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: Text("로그인"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("회원가입"),
              ),
            ],
          ),
        ],
      ),
    );
    // #enddocregion titleSection

    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => LoginView(title: 'Login Page'),
      },
      title: 'Kyusoo To-Do List App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kyusoo To-Do List App'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
