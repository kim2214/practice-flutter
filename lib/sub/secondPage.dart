import 'package:flutter/material.dart';
import '../marvel_movie.dart';

class SecondApp extends StatelessWidget {
  final List<Marvel> list;
  SecondApp({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('두번째 페이지'),
        ),
      ),
    );
  }
}
