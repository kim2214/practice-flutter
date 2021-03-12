import 'package:flutter/material.dart';
import '../marvel_movie.dart';

class FirstApp extends StatelessWidget {
  final List<Marvel> list;
  FirstApp({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.builder(
              itemBuilder: (context, position) {
                return GestureDetector(
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          list[position].imagePath,
                          height: 100,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                        Text(list[position].movieName)
                      ],
                    ),
                  ),
                  onTap: () {
                    AlertDialog dialog = AlertDialog(
                      content: Text(
                        '이 영화의 러닝타임은 ${list[position].movietime}입니다.',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => dialog);
                  },
                );
              },
              itemCount: list.length),
        ),
      ),
    );
  }
}
