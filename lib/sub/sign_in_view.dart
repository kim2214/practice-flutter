import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SigninView extends StatelessWidget {
  SigninView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        Container(
          alignment: Alignment.center,
          child: RaisedButton(
            child: Text('회원가입', style: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.pop(context);
              Fluttertoast.showToast(
                  msg: "회원가입 성공",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
        ),
      ]),
    );
  }
}
