
import 'package:flutter/material.dart';
import 'package:taskmanaging_app/main.dart';
import 'add_date.dart';


class AddTaskPage extends StatefulWidget {

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<AddTaskPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFF6C63FF),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Create new task",
              style: TextStyle(
                fontFamily: 'Montserra',
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        maxLength: 30,
                        decoration: const InputDecoration(
                          hintText: 'Title',
                          contentPadding: EdgeInsets.symmetric(vertical:15.0),
                        ),
                        onSaved: (String value) {

                        },
                      ),
                      TextFormField(
                        maxLength: 30,
                        decoration: const InputDecoration(
                          hintText: 'Details',
                          contentPadding: EdgeInsets.symmetric(vertical:15.0),
                        ),
                        onSaved: (String value) {

                        },
                      ),
                      //DateTimePicker(),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    _navigateToMainPage(context);
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  color: Color(0xFFF9A826),
                  child: Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    _navigateToMainPage(context);
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  color: Color(0xFFF50057),
                  child: Icon(
                    Icons.close,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  void _navigateToMainPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}
