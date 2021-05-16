import 'dart:ffi';

import 'package:flutter/material.dart';

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
      backgroundColor: Colors.indigo[900],
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
              child: Text(
                "Track Name",
                style: TextStyle(fontFamily: 'Monospace',fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("image/groovy.png"),
                ),
              ),
            ),
            Slider(value:20, onChanged:(value){} ,activeColor: Colors.deepPurple,min: 0,max: 100),
            Row(mainAxisAlignment: MainAxisAlignment.center,children:[Icon(Icons.replay_10_outlined,size: 40,color: Colors.pink,),Icon(Icons.play_arrow_outlined,size:60,color: Colors.purple,),Icon(Icons.forward_10_outlined,size:40,color: Colors.pink,)]),
          ],
        ),
      ),
    );
  }
}

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DinoMusic());
  }
}
