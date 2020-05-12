import 'package:flutter/material.dart';
import 'package:taskmanaging_app/UI/add/add_task_page.dart';
import 'package:taskmanaging_app/UI/start/start_page_topbar.dart';
import 'package:taskmanaging_app/UI/start/start_page.dart';

class ShowStartPage extends StatefulWidget {
 
  @override
  _ShowStartPageState createState() => _ShowStartPageState();
}

class _ShowStartPageState extends State<ShowStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StartPage(),
          TopBar(),
          Container(
            child: RaisedButton(
              onPressed: () {
                _navigateToAddTask(context);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              color: Color(0xFF6C63FF),
              child: Text(
                "Add new",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            alignment: Alignment(0.9, -0.48),
          ),
        ]  
      )
    );
  }
  void _navigateToAddTask(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddTaskPage()));
  }
}