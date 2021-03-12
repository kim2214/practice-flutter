import 'package:flutter/material.dart';
import '../marvel_movie.dart';

class SecondApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondApp();
  final List<Marvel> list;
  SecondApp({Key key, this.list}) : super(key: key);
}

class _SecondApp extends State<SecondApp> {
  final nameController = TextEditingController();
  int _radioValue = 0;
  bool release = false;
  var _imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
              Row(
                children: <Widget>[
                  Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('스파이더맨'),
                  Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('아이언맨'),
                  Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: _radioChange),
                  Text('어벤저스'),
                ],
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      child:
                          Image.asset('assets/avengers_endgame.jpg', width: 80),
                      onTap: () {
                        _imagePath = 'assets/avengers_endgame.jpg';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('assets/farfromhome.jpeg', width: 80),
                      onTap: () {
                        _imagePath = 'assets/farfromhome.jpeg';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('assets/homecomming.jpeg', width: 80),
                      onTap: () {
                        _imagePath = 'assets/homecomming.jpeg';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('assets/ironman.jpeg', width: 80),
                      onTap: () {
                        _imagePath = 'assets/ironman.jpeg';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('assets/thorrag.jpg', width: 80),
                      onTap: () {
                        _imagePath = 'assets/thorrag.jpg';
                      },
                    ),
                    GestureDetector(
                      child: Image.asset('assets/wandavision.jpeg', width: 80),
                      onTap: () {
                        _imagePath = 'assets/wandavision.jpeg';
                      },
                    ),
                  ],
                ),
              ),
              RaisedButton(
                  child: Text('영화 추가하기'),
                  onPressed: () {
                    var movie = Marvel(
                        movieName: nameController.value.text,
                        movietime: getHero(_radioValue),
                        imagePath: _imagePath);
                    AlertDialog dialog = AlertDialog(
                      title: Text('영화 추가하기'),
                      content: Text(
                        '이 영화는 ${movie.movieName} 입니다'
                        '또 영화의 등장 히어로는 ${movie.movietime}입니다.\n이 영화를 추가하시겠습니까?',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      actions: [
                        RaisedButton(
                          onPressed: () {
                            widget.list.add(movie);
                            Navigator.of(context).pop();
                          },
                          child: Text('Yes'),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('No'),
                        ),
                      ],
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => dialog);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  _radioChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  getHero(int radioValue) {
    switch (radioValue) {
      case 0:
        return "스파이더맨";
      case 1:
        return "아이언맨";
      case 2:
        return "어벤저스";
    }
  }
}
