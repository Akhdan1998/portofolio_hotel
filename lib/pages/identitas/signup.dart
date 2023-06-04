import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
            SizedBox(width: 16),
            Text(
              'Sign Up',
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Full Name',
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: '818181'.toColor()),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex: Pendekar Gendut',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Job',
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: '818181'.toColor()),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex: Proggramer',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Date Birth',
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: '818181'.toColor()),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex: 1998-24-03',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email Address',
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: '818181'.toColor()),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex: 1998akhdan@gmail.com',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Password',
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: '818181'.toColor()),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(right: 15, top: 14, bottom: 14, left: 15),
                suffix: Icon(Icons.visibility_off),
                border: OutlineInputBorder(),
                // hintText: 'Ex: Pendekar Gendut',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {},
        child: Container(
          height: 110,
          padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 40),
          child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: '4DA934'.toColor(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Sign Up',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: Colors.white),
              )),
        ),
      ),
    );
  }
}
