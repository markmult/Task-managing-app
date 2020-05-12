import 'package:flutter/material.dart';


class StartPageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          Container(
            margin:
              EdgeInsets.only(left: 15.0, top: 8.0, bottom: 8.0, right: 50.0),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xFFF50057),
              shape: BoxShape.circle,
            ),
          ),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Math test",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              )),
              Text("Calculus II exam tuesday",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ))
            ],
          ),
        ],
        
      ),
    );
  }

}