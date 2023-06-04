import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:portofolio_hotel/login.dart';
import 'package:supercharged/supercharged.dart';

import 'login.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/onboarding.png'),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 600),
            child: Column(
              children: [
                Image.asset('assets/hotelpedia.png'),
                SizedBox(height: 10),
                Container(
                  width: 220,
                  child: Text(
                    'Feel Pleasure Find Your Hotel in Hotelpedia',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.off(login());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: '4DA934'.toColor(),
                    ),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
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
