import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/pages/reservasi/aircraft.dart';
import 'package:portofolio_hotel/pages/reservasi/hotel.dart';
import 'package:portofolio_hotel/pages/reservasi/train.dart';
import 'package:portofolio_hotel/pages/reservasi/vehicle.dart';
import 'package:supercharged/supercharged.dart';

class reservasi extends StatefulWidget {
  @override
  State<reservasi> createState() => _reservasiState();
}

class _reservasiState extends State<reservasi> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  String SelectedButton = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: '4DA934'.toColor(),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Reservation',
            style: GoogleFonts.poppins().copyWith(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: '4DA934'.toColor(),
            width: MediaQuery.of(context).size.width,
            // height: 30,
            child: Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedButton = '0';
                      });
                      pageController.animateToPage(0,
                          duration: Duration(milliseconds: 50),
                          curve: Curves.bounceOut);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (SelectedButton == '0')
                            ? '4DA934'.toColor()
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.only(
                          top: 9, bottom: 9, left: 16, right: 16),
                      child: Text(
                        'Hotel',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: (SelectedButton == '0') ? FontWeight.bold : FontWeight.w300,
                            color: (SelectedButton == '0')
                                ? Colors.white
                                : '4D4A4A'.toColor()),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedButton = '1';
                      });
                      pageController.animateToPage(1,
                          duration: Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (SelectedButton == '1')
                            ? '4DA934'.toColor()
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.only(
                          top: 9, bottom: 9, left: 16, right: 16),
                      child: Text(
                        'Aircraft',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: (SelectedButton == '1') ? FontWeight.bold : FontWeight.w300,
                            color: (SelectedButton == '1')
                                ? Colors.white
                                : '4D4A4A'.toColor()),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedButton = '2';
                      });
                      pageController.animateToPage(2,
                          duration: Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (SelectedButton == '2')
                            ? '4DA934'.toColor()
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.only(
                          top: 9, bottom: 9, left: 16, right: 16),
                      child: Text(
                        'Train',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: (SelectedButton == '2') ? FontWeight.bold : FontWeight.w300,
                            color: (SelectedButton == '2')
                                ? Colors.white
                                : '4D4A4A'.toColor()),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedButton = '3';
                      });
                      pageController.animateToPage(3,
                          duration: Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (SelectedButton == '3')
                            ? '4DA934'.toColor()
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.only(
                          top: 9, bottom: 9, left: 16, right: 16),
                      child: Text(
                        'Vehicle',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: (SelectedButton == '3') ? FontWeight.bold : FontWeight.w300,
                            color: (SelectedButton == '3')
                                ? Colors.white
                                : '4D4A4A'.toColor()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: 'F5F5F5'.toColor(),
            height: MediaQuery.of(context).size.height - 275,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  pageChanged = index;
                });
              },
              children: [
                hotel(),
                aircraft(),
                train(),
                vehicle(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
