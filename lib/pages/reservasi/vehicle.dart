import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/widget/wisata.dart';
import 'package:supercharged/supercharged.dart';

class vehicle extends StatefulWidget {
  @override
  State<vehicle> createState() => _vehicleState();
}

class _vehicleState extends State<vehicle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        wisata(),
        SizedBox(height: 5),
        wisata(),
      ],
    );
  }
}
