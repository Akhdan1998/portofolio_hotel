import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'editprofil.dart';
import 'media.dart';

class profil extends StatefulWidget {
  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  int saldo = 1500000;
  int point = 150000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 42, right: 20),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    color: '4DA934'.toColor(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Profile',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(Icons.settings, color: Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 80),
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: '4DA934'.toColor(),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width - 74,
                          // height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: 'F5F5F5'.toColor(),
                          ),
                          child: Wrap(
                            children: [
                              Text(
                                'Enjoy the convenience of accessing your data by ',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: '626161'.toColor(),
                                ),
                              ),
                              Text(
                                'verifying your account ',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: '626161'.toColor(),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'here now',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 20,
                right: 20,
                top: 100,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        offset: const Offset(0, 0),
                        color: Colors.grey.shade300,
                      ),
                      BoxShadow(
                        blurRadius: 2,
                        offset: const Offset(0, 0),
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/akhdan.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Pendekar Gendut',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(editprofil());
                                    },
                                    child: Icon(
                                      Icons.edit_note,
                                      color: '4DA934'.toColor(),
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Proggramer',
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                                color: '323232'.toColor(),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 17,
                                        height: 17,
                                        decoration: BoxDecoration(
                                          color: '4DA934'.toColor(),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child:
                                            Icon(Icons.attach_money, size: 10, color: Colors.white,),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        NumberFormat.currency(
                                                locale: 'id',
                                                symbol: 'Rp ',
                                                decimalDigits: 0)
                                            .format(saldo),
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '1.156',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: '4DA934'.toColor(),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Point',
                                          style: GoogleFonts.poppins().copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: '4DA934'.toColor()),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 17,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    color: '4DA934'.toColor(),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(Icons.sell, size: 10, color: Colors.white,),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '11',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Coupon',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height - 420,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(media());
                      },
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: '0082C7'.toColor(),
                              ),
                              child: Icon(
                                Icons.share,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Links to Social Media',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Connect your account with social media',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: 'F153BC'.toColor(),
                              ),
                              child: Icon(
                                Icons.wallet,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Wallet',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Manage your Balance on Hotelpedia',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: 'FFCE31'.toColor(),
                              ),
                              child: Icon(
                                Icons.sell,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Manage Coupons',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Manage and view your collected coupons',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: 'D14D00'.toColor(),
                              ),
                              child: Icon(
                                Icons.share,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Customer Profile',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Book faster with automatic traveler data entry',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: '28C700'.toColor(),
                              ),
                              child: Icon(
                                Icons.key,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email & Password',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Increase your account security with verification',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: 'C300C7'.toColor(),
                              ),
                              child: Icon(
                                Icons.call,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hotelpedia Customer Service',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Need help?, contact our Customer Service',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: 'EC8309'.toColor(),
                              ),
                              child: Icon(
                                Icons.question_mark,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'F.A.Q',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'The most frequently asked questions about hotels',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              // width: 30,
                              // height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red,
                              ),
                              child: Icon(
                                Icons.logout,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Log Out',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Sign out of account',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: '6F6F6F'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
