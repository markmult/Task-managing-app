import 'package:flutter/material.dart';
import 'package:taskmanaging_app/UI/start/start_page_list.dart';

class StartPage extends StatefulWidget {
 
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(top: 200),
        children: getList(),
      ), 
    );
  }

  List<Widget> getList() {
    List<StartPageList> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(new StartPageList());
    }
    return list;
  }
}