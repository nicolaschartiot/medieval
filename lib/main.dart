import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'screens/music_screen.dart';

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
        body: Center(
          child: PageIndicatorContainer(
            length: 5,
            size: 7,
            indicatorColor: Colors.white,
            indicatorSelectorColor: Colors.grey,
            padding: EdgeInsets.only(bottom: 20.0, left: 6.0),
            pageView: PageView(
              controller: new PageController(),
              children: <Widget>[
                MusicScreen(
                  color: Colors.green,
                  title: "Town",
                ),
                MusicScreen(
                  color: Colors.grey,
                  title: "Dungeon",
                ),
                MusicScreen(
                  color: Colors.lightBlue,
                  title: "Ocean",
                ),
                MusicScreen(
                  color: Colors.yellow[400],
                  title: "Beach",
                ),
                MusicScreen(
                  color: Colors.amber,
                  title: "Combat",
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(bottom: 50.0),
          child: FloatingActionButton(
            tooltip: 'Play / Pause',
            child: (_playPause
                ? Icon(
                    Icons.play_arrow,
                    size: 30,
                  )
                : Icon(Icons.pause, size: 30)),
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
