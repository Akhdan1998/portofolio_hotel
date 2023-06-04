import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import '../../widget/hotel.dart';

class hotel extends StatefulWidget {
  @override
  State<hotel> createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kamar(),
        SizedBox(height: 5),
        kamar(),
      ],
    );
  }
}
