import 'package:flutter/material.dart';
import '../../widget/pesawat.dart';

class aircraft extends StatefulWidget {
  @override
  State<aircraft> createState() => _aircraftState();
}

class _aircraftState extends State<aircraft> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        pesawat(),
        SizedBox(height: 5),
        pesawat(),
      ],
    );
  }
}
