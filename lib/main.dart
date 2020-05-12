import 'package:flutter/material.dart';
import 'UI/start/show_start_page.dart';
import 'UI/calendar/show_calendar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dialogBackgroundColor: Colors.transparent,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: DefaultTabController(
        length: 2,
        child: new Scaffold(
          body: Stack(
            children: <Widget>[
              TabBarView(
                children: [
                  ShowStartPage(),
                  Container(
                    height: 400.0,
                    margin: EdgeInsets.only(bottom: 300.0),
                    color: Color(0xFF6C63FF),
                    child: ShowCalendarPage()
                  ),
                ],
              ),
            ],
          ),
          
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home, size: 45),
              ),
              Tab(
                icon: new Icon(Icons.calendar_today, size: 40),
              ),
            ],
            labelColor: Color(0xFF6C63FF),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent,
          ),
          backgroundColor: Colors.white,
        ),
        ),
      ),
    );
  }
}
