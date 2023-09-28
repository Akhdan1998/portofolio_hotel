import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:portofolio_hotel/model/kota.dart';
import 'package:supercharged/supercharged.dart';

class kamar extends StatefulWidget {

  @override
  State<kamar> createState() => _kamarState();
}

class _kamarState extends State<kamar> {
  int saldo = 257000;

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
            'Select City',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: '4DA934'.toColor(),
            height: 25,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 122,
                    height: 82,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/kotaKamar.png'))),
                  ),
                  SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Marcopolo Hotel Resort and Spa',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Menteng, Jakarta',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.w300),
                      ),
                      RatingBar.builder(
                        itemSize: 12,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        children: [
                          Icon(Icons.event_busy,
                              size: 15, color: '626161'.toColor()),
                          SizedBox(width: 6),
                          Text(
                            'Free Cancellation',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                color: '323232'.toColor(),
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wifi,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Wifi',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(saldo),
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '4DA934'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.restaurant,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Breakfast',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              'One day and one night',
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: '757575'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 122,
                    height: 82,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/kotaKamar.png'))),
                  ),
                  SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Marcopolo Hotel Resort and Spa',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Menteng, Jakarta',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.w300),
                      ),
                      RatingBar.builder(
                        itemSize: 12,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        children: [
                          Icon(Icons.event_busy,
                              size: 15, color: '626161'.toColor()),
                          SizedBox(width: 6),
                          Text(
                            'Free Cancellation',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                color: '323232'.toColor(),
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wifi,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Wifi',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(saldo),
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '4DA934'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.restaurant,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Breakfast',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              'One day and one night',
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: '757575'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 122,
                    height: 82,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/kotaKamar.png'))),
                  ),
                  SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Marcopolo Hotel Resort and Spa',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Menteng, Jakarta',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.w300),
                      ),
                      RatingBar.builder(
                        itemSize: 12,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        children: [
                          Icon(Icons.event_busy,
                              size: 15, color: '626161'.toColor()),
                          SizedBox(width: 6),
                          Text(
                            'Free Cancellation',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                color: '323232'.toColor(),
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wifi,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Wifi',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(saldo),
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '4DA934'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.restaurant,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Breakfast',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              'One day and one night',
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: '757575'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 122,
                    height: 82,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/kotaKamar.png'))),
                  ),
                  SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Marcopolo Hotel Resort and Spa',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Menteng, Jakarta',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.w300),
                      ),
                      RatingBar.builder(
                        itemSize: 12,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        children: [
                          Icon(Icons.event_busy,
                              size: 15, color: '626161'.toColor()),
                          SizedBox(width: 6),
                          Text(
                            'Free Cancellation',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                color: '323232'.toColor(),
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wifi,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Wifi',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(saldo),
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '4DA934'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.restaurant,
                                    size: 15, color: '626161'.toColor()),
                                SizedBox(width: 6),
                                Text(
                                  'Free Breakfast',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '323232'.toColor(),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Text(
                              'One day and one night',
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: '757575'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
