import 'package:flutter/material.dart';

class MyAssetPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Asset'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '이곳은 마이에셋 페이지 입니다',
            ),
          ],
        ),
      ),
    );
  }
}
