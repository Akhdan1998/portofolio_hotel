import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portofolio_hotel/story/story_1.dart';
import 'package:portofolio_hotel/story/story_2.dart';
import 'package:portofolio_hotel/story/story_3.dart';
import 'package:portofolio_hotel/story/story_bars.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class StoryPage extends StatefulWidget {
  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int currentStoryIndex = 0;
  final List<Widget> myStories = [
    myStory1(), // 0
    myStory2(), // 1
    myStory3(), // 2
  ];
  List<double> percentWatched = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < myStories.length; i++) {
      percentWatched.add(0);
    }
    _startWatched();
  }

  void _startWatched() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        if (percentWatched[currentStoryIndex] + 0.01 < 1) {
          percentWatched[currentStoryIndex] += 0.01;
        } else {
          percentWatched[currentStoryIndex] = 1;
          timer.cancel();
          if (currentStoryIndex < myStories.length - 1) {
            currentStoryIndex++;
            _startWatched();
          } else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  void _onTapDown(TapDownDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;
    if (dx < screenWidth / 2) {
      setState(() {
        if (currentStoryIndex > 0) {
          percentWatched[currentStoryIndex - 1] = 0;
          percentWatched[currentStoryIndex] = 0;
          currentStoryIndex--;
        }
      });
    } else {
      setState(() {
        if (currentStoryIndex < myStories.length - 1) {
          percentWatched[currentStoryIndex] = 1;
          currentStoryIndex++;
        } else {
          percentWatched[currentStoryIndex] = 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      child: Scaffold(
        body: Stack(
          children: [
            //story
            myStories[currentStoryIndex],

            //progressbar
            MyStoryBars(
              percentWatched: percentWatched,
            ),
          ],
        ),
      ),
    );
  }
}
