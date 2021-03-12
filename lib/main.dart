import 'package:flutter/material.dart';
import 'package:practice_flutter/sub/firstPage.dart';
import 'package:practice_flutter/sub/secondPage.dart';
import './marvel_movie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview Example'),
        ),
        body: TabBarView(
          children: <Widget>[
            FirstApp(list: marvelList),
            SecondApp(list: marvelList)
          ],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(
          tabs: <Tab>[
            Tab(
                icon: Icon(
              Icons.looks_one,
              color: Colors.blue,
            )),
            Tab(
              icon: Icon(
                Icons.looks_two,
                color: Colors.blue,
              ),
            )
          ],
          controller: controller,
        ));
  }

  TabController controller;
  List<Marvel> marvelList = List();

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);

    marvelList.add(Marvel(
        movieName: '아이언맨',
        movietime: '126m',
        imagePath: 'assets/ironman.jpeg'));
    marvelList.add(Marvel(
        movieName: '어벤저스',
        movietime: '186m',
        imagePath: 'assets/avengers_endgame.jpg'));
    marvelList.add(Marvel(
        movieName: '스파이더맨 파프롬 홈',
        movietime: '136m',
        imagePath: 'assets/farfromhome.jpeg'));
    marvelList.add(Marvel(
        movieName: '스파이더맨 홈 커밍',
        movietime: '116m',
        imagePath: 'assets/homecomming.jpeg'));
    marvelList.add(Marvel(
        movieName: '토르 라그나로크',
        movietime: '113m',
        imagePath: 'assets/thorrag.jpg'));
    marvelList.add(Marvel(
        movieName: '완다 비전',
        movietime: '26m',
        imagePath: 'assets/wandavision.jpeg'));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
