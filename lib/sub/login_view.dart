import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 페이지'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('로그인 페이지'),
          onPressed: () {
            // 눌렀을 때 두 번째 route로 이동합니다.
          },
        ),
      ),
    );
  }
}