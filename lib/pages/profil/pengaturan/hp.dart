import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class hp extends StatefulWidget {
  @override
  State<hp> createState() => _hpState();
}

class _hpState extends State<hp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: '4DA934'.toColor(),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Settings',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 35,
            color: '4DA934'.toColor(),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: '4A4A4A'.toColor(),
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '081290763984',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: '4A4A4A'.toColor(),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Verified',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: '39AA3D'.toColor(),
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.verified, color: '39AA3D'.toColor(), size: 20,),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 21),
                Text(
                  'Email',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: '4A4A4A'.toColor(),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'akhdanhabibie192@gmail.com',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: '4A4A4A'.toColor(),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'All your transaction & account security information will be sent to this email.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                    color: '9E9E9E'.toColor(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
