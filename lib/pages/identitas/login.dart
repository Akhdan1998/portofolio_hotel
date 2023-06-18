import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/pages/home/home.dart';
import 'package:portofolio_hotel/pages/navigasi.dart';
import 'package:portofolio_hotel/pages/identitas/signup.dart';
import 'package:supercharged/supercharged.dart';

// import 'pages/identitas/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Image.asset(
                'assets/hotelpedia.png',
                color: '4DA934'.toColor(),
              ),
            ),
            SizedBox(height: 75),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: '818181'.toColor()),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Password',
                    style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: '818181'.toColor()),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.visibility_off)),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 15),
                  child: Checkbox(
                      value: isCheked,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheked = value!;
                        });
                      }),
                ),
                Text(
                  'Remember me',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: '818181'.toColor()),
                )
              ],
            ),
            SizedBox(height: 90),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(navigasi());
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
                        'Sign in',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t Have an Account? ',
                        style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: '818181'.toColor()),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(signup());
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: '4DA934'.toColor(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
            // alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 2, color: 'A0A0A0'.toColor()),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/google.png'),
                SizedBox(width: 5),
                Text(
                  'Sign in with Google',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
