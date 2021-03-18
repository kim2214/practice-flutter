import 'package:flutter/material.dart';
import '../model/schedule.dart';

class MainView extends StatelessWidget {
  final List<Schedule> list;
  MainView({Key key, this.list}) : super(key: key);

  List<Schedule> scheduleList = List();

  @override
  Widget build(BuildContext context) {
    scheduleList.add(Schedule(title: '임시1', content: 'test content'));
    scheduleList.add(Schedule(title: '임시2', content: 'test content'));


    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Container(
        child: Center(
          child: ListView.builder(itemBuilder: (context, position) {
            return Card(
              child: Row(
                children: <Widget>[
                  Text(scheduleList[position].title),
                  Text(scheduleList[position].content),
                  ],
              ),
            );
          },
          itemCount: scheduleList.length,
          ),
        ),
      ),
    );
  }
}
