import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class myStory2 extends StatefulWidget {
  @override
  State<myStory2> createState() => _myStory2State();
}

class _myStory2State extends State<myStory2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
        'assets/pendekar.JPG',
        // fit: BoxFit.cover,
        // alignment: Alignment.center,
      )),
    );
  }
}
