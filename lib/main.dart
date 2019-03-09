import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medieval',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Medieval'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final String title;
  HomeScreen({Key key, this.title}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _playPause = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Medieval'),
        ),
        body: Center(
          child: Text('You have pushed the button times.'),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5.0,
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: Container(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            tooltip: 'Play / Pause',
            child: (_playPause ? Icon(Icons.play_arrow, size: 30,) : Icon(Icons.pause, size: 30)),
            onPressed: () => {
                  setState(() {
                    _playPause = !_playPause;
                  }),
                  print(_playPause)
                },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
