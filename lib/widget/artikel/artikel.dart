import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/widget/artikel/artikelDetail.dart';
import 'package:supercharged/supercharged.dart';

import 'artikelHome.dart';

class artikel extends StatefulWidget {
  @override
  State<artikel> createState() => _artikelState();
}

class _artikelState extends State<artikel> {
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
            'Explore Inspiration',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 50,
                      color: 'F5F5F5'.toColor(),
                      child: TextField(
                        cursorColor: '4DA934'.toColor(),
                        decoration: InputDecoration(
                          hintText: 'What are you looking for?',
                          hintStyle: GoogleFonts.poppins().copyWith(fontSize: 11, color: '919191'.toColor()),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(width: 1, color: '4DA934'.toColor()),
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: '4DA934'.toColor(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Get.to(artikelDetail());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/artik.png', scale: 2),
                              SizedBox(height: 10),
                              Text(
                                'The Most Amazing Mountain in Japan',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    'Akhdan Habibie',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        color: '919191'.toColor(),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 6),
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: '919191'.toColor(),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    '2 Weeks ago',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        color: '919191'.toColor(),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            Get.to(artikelDetail());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/artik.png', scale: 2),
                              SizedBox(height: 10),
                              Text(
                                'The Most Amazing Mountain in Japan',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    'Akhdan Habibie',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        color: '919191'.toColor(),
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 6),
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: '919191'.toColor(),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    '2 Weeks ago',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        color: '919191'.toColor(),
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    thickness: 3,
                  ),
                  SizedBox(height: 15),
                  artikelHome(),
                  SizedBox(height: 20),
                  artikelHome(),
                  SizedBox(height: 20),
                  artikelHome(),
                  SizedBox(height: 20),
                  artikelHome(),
                  SizedBox(height: 20),
                  artikelHome(),
                  SizedBox(height: 20),
                  artikelHome(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
