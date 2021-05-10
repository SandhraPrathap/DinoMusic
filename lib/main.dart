import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(Music());
}

class DinoMusic extends StatefulWidget {
  @override
  _DinoMusicState createState() => _DinoMusicState();
}

class _DinoMusicState extends State<DinoMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Now Playing',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            Center(
                child: Text("Track Name",
                    style: TextStyle(fontFamily: 'Bold', color: Colors.white))),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("image/groovy.png")),
              ),
            )
          ],
        )));
  }
}

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DinoMusic());
  }
}
