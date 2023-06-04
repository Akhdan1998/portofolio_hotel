import 'package:flutter/material.dart';

class myStory3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/gendut.JPEG',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          )),
    );
  }
}
