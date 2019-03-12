import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  final Color color;
  final String title;

  MusicScreen({Key key, this.color, this.title}) : super(key: key);

  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 80.0),
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40.0),
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ],
      ),
      color: widget.color,
    );
  }
}
