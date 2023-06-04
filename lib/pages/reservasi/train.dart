import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/widget/kereta.dart';
import 'package:supercharged/supercharged.dart';

class train extends StatefulWidget {
  @override
  State<train> createState() => _trainState();
}

class _trainState extends State<train> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kereta(),
        SizedBox(height: 5),
        kereta(),
      ],
    );
  }
}
