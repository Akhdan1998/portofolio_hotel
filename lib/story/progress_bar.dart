import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProgressBar extends StatelessWidget {
  double percentWatched = 0;
  MyProgressBar({ required this.percentWatched});
  @override
  Widget build(BuildContext context) {
    return new LinearPercentIndicator(
      barRadius: Radius.circular(20),
      lineHeight: 14.0,
      percent: percentWatched,
      backgroundColor: Colors.grey[400],
      progressColor: Colors.grey[600],
    );
  }
}
