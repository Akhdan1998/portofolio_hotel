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
  bool isCheked = true;
  bool _obsecureText = true;
  final email = TextEditingController(text: 'wkwk@');
  final pass = TextEditingController(text: 'wkwk');
  final _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formState,
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 250),
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
                      TextFormField(
                        validator: (value) {
                          if (value == '' || !value!.contains('@')) {
                            return 'Email cannot be empty!!';
                          }
                          return null;
                        },
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: '4DA934'.toColor(),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide:
                            BorderSide(width: 1, color: '4DA934'.toColor()),
                          ),
                          border: OutlineInputBorder(),
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
                      SizedBox(height: 5),
                      TextFormField(
                        validator: (value) {
                          if (value == '') {
                            return 'Password cannot be empty!!';
                          }
                          return null;
                        },
                        controller: pass,
                        obscureText: _obsecureText,
                        cursorColor: '4DA934'.toColor(),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                              width: 1,
                              color: '4DA934'.toColor(),
                            ),
                          ),
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obsecureText = !_obsecureText;
                              });
                            },
                            child: Icon(_obsecureText ?
                            Icons.visibility_off : Icons.visibility,
                              color: '4DA934'.toColor(),
                            ),
                          ),
                        ),
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
                          activeColor: '4DA934'.toColor(),
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
                          if (_formState.currentState!.validate()) {
                            Get.off(navigasi());
                          } else {}
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
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () async {},
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
