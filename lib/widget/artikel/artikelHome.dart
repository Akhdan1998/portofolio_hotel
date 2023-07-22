import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'artikel.dart';
import 'artikelDetail.dart';

class artikelHome extends StatefulWidget {
  @override
  State<artikelHome> createState() => _artikelHomeState();
}

class _artikelHomeState extends State<artikelHome> {
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {
          Get.to(artikelDetail());
        },
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width - 102,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '323232'.toColor(),
                              fontSize: 11),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Yuvan Farid Aziz',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                color: '919191'.toColor(),
                                fontSize: 10),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.radio_button_on,
                              size: 7, color: '919191'.toColor()),
                          SizedBox(width: 5),
                          Text(
                            '2 Weeks ago',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                color: '919191'.toColor(),
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/art.png',
                    scale: 2,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
