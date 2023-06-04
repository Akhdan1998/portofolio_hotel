import 'package:flutter/material.dart';

class myStory1 extends StatefulWidget {
  @override
  _myStory1State createState() => _myStory1State();
}

class _myStory1State extends State<myStory1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
        'assets/gua.png',
        fit: BoxFit.cover,
        alignment: Alignment.center,
      )),
    );
  }
}
