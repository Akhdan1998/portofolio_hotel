import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryCircle extends StatelessWidget {
  final function;

  StoryCircle({this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  height: 65,
                  width: 65,
                  child: Icon(Icons.my_location),
                ),
                SizedBox(height: 5),
                Text(
                  'Near Me',
                  style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.w300,
                      color: '4D4B4B'.toColor(),
                      fontSize: 13),
                ),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/jakarta.png'),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Jakarta',
                  style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.w300,
                      color: '4D4B4B'.toColor(),
                      fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
