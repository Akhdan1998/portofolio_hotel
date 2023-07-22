import 'dart:io';
import 'package:http/http.dart';
import 'package:supercharged/supercharged.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class artikelDetail extends StatefulWidget {
  @override
  State<artikelDetail> createState() => _artikelDetailState();
}

class _artikelDetailState extends State<artikelDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 20, top: 50, right: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      color: '4DA934'.toColor(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Article Detail',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.settings, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 20, right: 20, top: 80),
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                  ],
                ),
                Positioned(
                    top: 100,
                    left: 20,
                    right: 20,
                    child: Image.asset('assets/artik.png')),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wonderful Jungle You Should Discover',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Akhdan Habibie',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '919191'.toColor(),
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(width: 6),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: '919191'.toColor(),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      SizedBox(width: 6),
                      Text(
                        '2 Weeks ago',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '919191'.toColor(),
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Chip(
                          backgroundColor: 'C4FCD0'.toColor(),
                          avatar: Icon(
                            Icons.share,
                            size: 15,
                            color: '009922'.toColor(),
                          ),
                          label: Text(
                            'Share',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: '009922'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      GestureDetector(
                        onTap: () {},
                        child: Chip(
                          backgroundColor: 'FEFFB8'.toColor(),
                          avatar: Icon(
                            Icons.bookmark,
                            size: 19,
                            color: 'D4B200'.toColor(),
                          ),
                          label: Text(
                            'Save',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: 'D4B200'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      GestureDetector(
                        onTap: () {},
                        child: Chip(
                          backgroundColor: 'FEE0E0'.toColor(),
                          avatar: Icon(
                            Icons.visibility,
                            size: 17,
                            color: 'E97C7C'.toColor(),
                          ),
                          label: Text(
                            '1.459',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: 'E97C7C'.toColor(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    '          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Senectus id et euismod pharetra nunc, sit tincidunt ridiculus in. Hendrerit in mi arcu nunc tortor, tellus, eget lectus in. Duis arcu vulputate tortor sit cras posuere. Habitasse et volutpat vitae ultrices tempus urna. Aliquam fringilla scelerisque mauris erat eget leo turpis risus. Fringilla mauris tortor a massa.',
                    style: GoogleFonts.poppins().copyWith(
                      // fontWeight: FontWeight.w300,
                      fontSize: 11,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Senectus id et euismod pharetra nunc, sit tincidunt ridiculus in. Hendrerit in mi arcu nunc tortor, tellus, eget lectus in. Duis arcu vulputate tortor sit cras posuere. Habitasse et volutpat vitae ultrices tempus urna. Aliquam fringilla scelerisque mauris erat eget leo turpis risus. Fringilla mauris tortor a massa.',
                    style: GoogleFonts.poppins().copyWith(
                      // fontWeight: FontWeight.w300,
                      fontSize: 11,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Senectus id et euismod pharetra nunc, sit tincidunt ridiculus in. Hendrerit in mi arcu nunc tortor, tellus, eget lectus in. Duis arcu vulputate tortor sit cras posuere. Habitasse et volutpat vitae ultrices tempus urna. Aliquam fringilla scelerisque mauris erat eget leo turpis risus. Fringilla mauris tortor a massa.',
                    style: GoogleFonts.poppins().copyWith(
                      // fontWeight: FontWeight.w300,
                      fontSize: 11,
                      color: '323232'.toColor(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
