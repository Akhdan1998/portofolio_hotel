import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/pages/profil/pengaturan/pengaturan%20notifikasi.dart';
import 'package:portofolio_hotel/pages/profil/pengaturan/syarat.dart';
import 'package:portofolio_hotel/pages/profil/pengaturan/tentang.dart';
import 'package:supercharged/supercharged.dart';

import 'hp.dart';
import 'kebijakan.dart';

class pengaturan extends StatefulWidget {
  const pengaturan({super.key});

  @override
  State<pengaturan> createState() => _pengaturanState();
}

class _pengaturanState extends State<pengaturan> {
  String language = '1';
  bool value = true;

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'General',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: '4A4A4A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Language',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: '4A4A4A'.toColor(),
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                language = '1';
                              });
                            },
                            child: Container(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: (language == '1')
                                          ? '4DA934'.toColor()
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        width: 1,
                                        color: '939393'.toColor(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'IDN',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: '626161'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                language = '2';
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: (language == '2')
                                        ? '4DA934'.toColor()
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      width: 1,
                                      color: '939393'.toColor(),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'ENG',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                    color: '626161'.toColor(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(pengaturannotifikasi());
                    },
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Settings Notifications',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '4A4A4A'.toColor(),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: 'A6A6A6'.toColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Location',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: '4A4A4A'.toColor(),
                        ),
                      ),
                      Container(
                        height: 16,
                        // width: 10,
                        padding: EdgeInsets.zero,
                        child: Switch.adaptive(
                          activeColor: '4DA934'.toColor(),
                          activeTrackColor: Colors.green,
                          value: value,
                          onChanged: (value) => setState(() {
                            this.value = value;
                          }),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Account & Security',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: '4A4A4A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Get.to(hp());
                    },
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email and Mobile Number',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '4A4A4A'.toColor(),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: 'A6A6A6'.toColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Security Settings',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '4A4A4A'.toColor(),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: 'A6A6A6'.toColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Other',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: '4A4A4A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Get.to(tentang());
                    },
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'About Hotelpedia',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '4A4A4A'.toColor(),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: 'A6A6A6'.toColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(kebijakan());
                    },
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Privacy Policy',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '4A4A4A'.toColor(),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: 'A6A6A6'.toColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(syarat());
                    },
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms and conditions',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '4A4A4A'.toColor(),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: 'A6A6A6'.toColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rate the Hotelpedia App',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '4A4A4A'.toColor(),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: 'A6A6A6'.toColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 35,
                    color: '4A4A4A'.toColor(),
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
