import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:portofolio_hotel/pages/home/home.dart';
import 'package:portofolio_hotel/pages/navigasi.dart';
import 'package:portofolio_hotel/pages/identitas/signup.dart';
import 'package:supercharged/supercharged.dart';
import 'dart:io';

// import 'pages/identitas/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isCheked = true;
  bool _obsecureTextSignIn = true;
  final emailSignIn = TextEditingController(text: 'pendekargendut@gmail.com');
  final passSignIn = TextEditingController(text: 'wkwk1998');
  bool _obsecureTextSignUp = true;
  final nameSignUp = TextEditingController();
  final jobSignUp = TextEditingController();
  final dateSignUp = TextEditingController();
  final emailSignUp = TextEditingController();
  final passSignUp = TextEditingController();
  final _formState = GlobalKey<FormState>();
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  FlipCardController _controllerFlip = FlipCardController();

  @override
  void initState() {
    super.initState();
    _controllerFlip = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formState,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              // padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: (Platform.isIOS) ? 80 : 70),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Image.asset(
                      'assets/hotelpedia.png',
                      color: '4DA934'.toColor(),
                    ),
                  ),
                  SizedBox(height: (Platform.isIOS) ? 80 : 30),
                  FlipCard(
                    rotateSide: RotateSide.bottom,
                    controller: _controllerFlip,
                    onTapFlipping: false,
                    axis: FlipAxis.vertical,
                    // speed: 1000,
                    // flipOnTouch: false,
                    // key: cardKey,
                    // fill: Fill.none,
                    // direction: FlipDirection.HORIZONTAL,
                    // side: CardSide.FRONT,
                      frontWidget: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // (Platform.isIOS) ? Text(
                                //   'Email Address',
                                //   style: GoogleFonts.poppins().copyWith(
                                //       fontWeight: FontWeight.w300,
                                //       fontSize: 15,
                                //       color: '818181'.toColor()),
                                // ) : Container(),
                                SizedBox(height: 5),
                                TextFormField(
                                  validator: (value) {
                                    if (value == '' || !value!.contains('@')) {
                                      return 'Email cannot be empty!!';
                                    }
                                    return null;
                                  },
                                  controller: emailSignIn,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: '4DA934'.toColor(),
                                  decoration: InputDecoration(
                                    label: Text('Email Adrress'),
                                    labelStyle: GoogleFonts.poppins().copyWith(color: '4DA934'.toColor(),),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      borderSide: BorderSide(
                                          width: 1, color: '4DA934'.toColor()),
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 20),
                                // (Platform.isIOS) ? Text(
                                //   'Password',
                                //   style: GoogleFonts.poppins().copyWith(
                                //       fontWeight: FontWeight.w300,
                                //       fontSize: 15,
                                //       color: '818181'.toColor()),
                                // ) : Container(),
                                SizedBox(height: 5),
                                TextFormField(
                                  validator: (value) {
                                    if (value == '') {
                                      return 'Password cannot be empty!!';
                                    }
                                    return null;
                                  },
                                  controller: passSignIn,
                                  obscureText: _obsecureTextSignIn,
                                  cursorColor: '4DA934'.toColor(),
                                  decoration: InputDecoration(
                                    label: Text('Password'),
                                    labelStyle: GoogleFonts.poppins().copyWith(color: '4DA934'.toColor(),),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: '4DA934'.toColor(),
                                      ),
                                    ),
                                    border: OutlineInputBorder(),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obsecureTextSignIn = !_obsecureTextSignIn;
                                        });
                                      },
                                      child: Icon(
                                        _obsecureTextSignIn
                                            ? Icons.visibility_off
                                            : Icons.visibility,
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
                          SizedBox(height: (Platform.isIOS) ? 90 : 75),
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
                                        // _controllerFlip.toggleCard();
                                        _controllerFlip.flipcard();
                                        // Get.to(signup());
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
                      backWidget: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              textCapitalization: TextCapitalization.sentences,
                              validator: (value) {
                                if (value == '') {
                                  return 'Name cannot be empty';
                                }
                                return null;
                              },
                              controller: nameSignUp,
                              cursorColor: '4DA934'.toColor(),
                              decoration: InputDecoration(
                                label: Text('Full Name'),
                                labelStyle: GoogleFonts.poppins().copyWith(color: '4DA934'.toColor(),),
                                hintText: 'Akhdan Habibie',
                                hintStyle: GoogleFonts.poppins().copyWith(color: Colors.grey.shade400),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: '4DA934'.toColor(),
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              textCapitalization: TextCapitalization.sentences,
                              validator: (value) {
                                if (value == '') {
                                  return 'Job cannot be empty';
                                }
                                return null;
                              },
                              controller: jobSignUp,
                              cursorColor: '4DA934'.toColor(),
                              decoration: InputDecoration(
                                label: Text('Job'),
                                labelStyle: GoogleFonts.poppins().copyWith(color: '4DA934'.toColor(),),
                                hintText: 'Proggrammer',
                                hintStyle: GoogleFonts.poppins().copyWith(color: Colors.grey.shade400),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: '4DA934'.toColor(),
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              onTap: () async {
                                DateTime? pickeddate =
                                await showDatePicker(
                                    context: context,
                                    initialDate:
                                    DateTime.now(),
                                    firstDate: DateTime(1945),
                                    lastDate: DateTime(2500));

                                if (pickeddate != null) {
                                  setState(() {
                                    dateSignUp.text =
                                        DateFormat('dd-MM-yyyy')
                                            .format(pickeddate);
                                  });
                                }
                              },
                              validator: (value) {
                                if (value == '') {
                                  return 'Date of Birth cannot be empty!!';
                                }
                                return null;
                              },
                              controller: dateSignUp,
                              cursorColor: '4DA934'.toColor(),
                              decoration: InputDecoration(
                                label: Text('Date Birth'),
                                labelStyle: GoogleFonts.poppins().copyWith(color: '4DA934'.toColor(),),
                                hintText: '1998-24-03',
                                hintStyle: GoogleFonts.poppins().copyWith(color: Colors.grey.shade400),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: '4DA934'.toColor(),
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == '' || !value!.contains('@')) {
                                  return 'Email cannot be empty!!';
                                }
                                return null;
                              },
                              controller: emailSignUp,
                              cursorColor: '4DA934'.toColor(),
                              decoration: InputDecoration(
                                label: Text('Email Address'),
                                labelStyle: GoogleFonts.poppins().copyWith(color: '4DA934'.toColor(),),
                                hintText: '1998akhdan@gmail.com',
                                hintStyle: GoogleFonts.poppins().copyWith(color: Colors.grey.shade400),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: '4DA934'.toColor(),
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              validator: (value) {
                                if (value == '') {
                                  return 'Password cannot be empty!!';
                                }
                                return null;
                              },
                              controller: passSignUp,
                              obscureText: _obsecureTextSignUp,
                              cursorColor: '4DA934'.toColor(),
                              decoration: InputDecoration(
                                label: Text('Password'),
                                labelStyle: GoogleFonts.poppins().copyWith(color: '4DA934'.toColor(),),
                                hintText: 'Password',
                                hintStyle: GoogleFonts.poppins().copyWith(color: Colors.grey.shade400),
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
                                      _obsecureTextSignUp = !_obsecureTextSignUp;
                                    });
                                  },
                                  child: Icon(_obsecureTextSignUp ?
                                  Icons.visibility_off : Icons.visibility,
                                    color: '4DA934'.toColor(),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () async {
                                if (_formState.currentState!.validate()) {
                                  // Get.back();
                                  Fluttertoast.showToast(
                                      msg: "Successful Registration",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.TOP,
                                      timeInSecForIosWeb: 3,
                                      backgroundColor: '4DA934'.toColor(),
                                      textColor: Colors.white,
                                      fontSize: 16.0
                                  );
                                } else {}
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
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
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have a account? ',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: '818181'.toColor()),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // _controllerFlip.toggleCard();
                                    _controllerFlip.flipcard();
                                    // Get.to(signup());
                                  },
                                  child: Text(
                                    'Login',
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
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(left: 30, right: 30),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     // mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         'Email Address',
                  //         style: GoogleFonts.poppins().copyWith(
                  //             fontWeight: FontWeight.w300,
                  //             fontSize: 15,
                  //             color: '818181'.toColor()),
                  //       ),
                  //       SizedBox(height: 5),
                  //       TextFormField(
                  //         validator: (value) {
                  //           if (value == '' || !value!.contains('@')) {
                  //             return 'Email cannot be empty!!';
                  //           }
                  //           return null;
                  //         },
                  //         controller: email,
                  //         keyboardType: TextInputType.emailAddress,
                  //         cursorColor: '4DA934'.toColor(),
                  //         decoration: InputDecoration(
                  //           focusedBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.all(Radius.circular(5)),
                  //             borderSide:
                  //             BorderSide(width: 1, color: '4DA934'.toColor()),
                  //           ),
                  //           border: OutlineInputBorder(),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10),
                  //       Text(
                  //         'Password',
                  //         style: GoogleFonts.poppins().copyWith(
                  //             fontWeight: FontWeight.w300,
                  //             fontSize: 15,
                  //             color: '818181'.toColor()),
                  //       ),
                  //       SizedBox(height: 5),
                  //       TextFormField(
                  //         validator: (value) {
                  //           if (value == '') {
                  //             return 'Password cannot be empty!!';
                  //           }
                  //           return null;
                  //         },
                  //         controller: pass,
                  //         obscureText: _obsecureText,
                  //         cursorColor: '4DA934'.toColor(),
                  //         decoration: InputDecoration(
                  //           focusedBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.all(Radius.circular(5)),
                  //             borderSide: BorderSide(
                  //               width: 1,
                  //               color: '4DA934'.toColor(),
                  //             ),
                  //           ),
                  //           border: OutlineInputBorder(),
                  //           suffixIcon: GestureDetector(
                  //             onTap: () {
                  //               setState(() {
                  //                 _obsecureText = !_obsecureText;
                  //               });
                  //             },
                  //             child: Icon(_obsecureText ?
                  //             Icons.visibility_off : Icons.visibility,
                  //               color: '4DA934'.toColor(),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(height: 5),
                  //     ],
                  //   ),
                  // ),
                  // Row(
                  //   children: [
                  //     Container(
                  //       alignment: Alignment.centerLeft,
                  //       padding: EdgeInsets.only(left: 15),
                  //       child: Checkbox(
                  //           activeColor: '4DA934'.toColor(),
                  //           value: isCheked,
                  //           onChanged: (bool? value) {
                  //             setState(() {
                  //               isCheked = value!;
                  //             });
                  //           }),
                  //     ),
                  //     Text(
                  //       'Remember me',
                  //       style: GoogleFonts.poppins().copyWith(
                  //           fontSize: 13,
                  //           fontWeight: FontWeight.w300,
                  //           color: '818181'.toColor()),
                  //     )
                  //   ],
                  // ),
                  // SizedBox(height: 90),
                  // Container(
                  //   padding: EdgeInsets.only(left: 30, right: 30),
                  //   child: Column(
                  //     children: [
                  //       GestureDetector(
                  //         onTap: () {
                  //           if (_formState.currentState!.validate()) {
                  //             Get.off(navigasi());
                  //           } else {}
                  //         },
                  //         child: Container(
                  //           alignment: Alignment.center,
                  //           width: MediaQuery.of(context).size.width,
                  //           padding: EdgeInsets.only(top: 10, bottom: 10),
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(5),
                  //             color: '4DA934'.toColor(),
                  //           ),
                  //           child: Text(
                  //             'Sign in',
                  //             style: GoogleFonts.poppins().copyWith(
                  //                 fontSize: 20,
                  //                 fontWeight: FontWeight.w300,
                  //                 color: Colors.white),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Text(
                  //             'Don’t Have an Account? ',
                  //             style: GoogleFonts.poppins().copyWith(
                  //                 fontWeight: FontWeight.w300,
                  //                 fontSize: 12,
                  //                 color: '818181'.toColor()),
                  //           ),
                  //           GestureDetector(
                  //             onTap: () {
                  //               Get.to(signup());
                  //             },
                  //             child: Text(
                  //               'Sign Up',
                  //               style: GoogleFonts.poppins().copyWith(
                  //                 fontWeight: FontWeight.w300,
                  //                 fontSize: 12,
                  //                 color: '4DA934'.toColor(),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () async {},
        child: Container(
          height: (Platform.isIOS) ? 110 : 75,
          padding: (Platform.isIOS) ?  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 40) : EdgeInsets.only(left: 30, right: 30, top: 15, bottom:15),
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
