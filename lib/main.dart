import 'package:flutter/material.dart';
import 'package:flutter_string_encryption/flutter_string_encryption.dart';
import 'package:practice_flutter/sub/login_view.dart';
import 'package:practice_flutter/sub/sign_in_view.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  TextEditingController passwordController = new TextEditingController();

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
              controller: passwordController,
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
                      Decrypt();
                },
                child: Text("로그인"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SigninView()));
                  Encrypt();
                  // print('here is main $encryptPassword');
                },
                child: Text("회원가입"),
              ),
            ],
          ),
        ],
      ),
    );
    // #enddocregion titleSection

    return MaterialApp(
      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/a': (BuildContext context) => LoginView(title: 'Login Page'),
      // },
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

  var passkey = "null";
  String encryptedS, decryptedS;
  var password = "null";
  PlatformStringCryptor cryptor;
// method to Encrypt String Password
  void Encrypt() async {
    cryptor = PlatformStringCryptor();
    final salt = await cryptor.generateSalt();
    password = passwordController.text;
    passkey = await cryptor.generateKeyFromPassword(password, salt);
    // here pass the password entered by user and the key
    encryptedS = await cryptor.encrypt(password, passkey);
    print(encryptedS);
  }

// method to decrypt String Password
  void Decrypt() async {
    try {
      //here pass encrypted string and the key to decrypt it
      decryptedS = await cryptor.decrypt(encryptedS, passkey);
      print(decryptedS);
    } on MacMismatchException {}
  }
}
