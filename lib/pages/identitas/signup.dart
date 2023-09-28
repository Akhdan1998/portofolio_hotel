import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:portofolio_hotel/pages/identitas/login.dart';
import 'package:supercharged/supercharged.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool _obsecureText = true;
  final name = TextEditingController();
  final job = TextEditingController();
  final date = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  final _formState = GlobalKey<FormState>();

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
      body: Form(
        key: _formState,
        child: Container(
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
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                validator: (value) {
                  if (value == '') {
                    return 'Name cannot be empty';
                  }
                  return null;
                },
                controller: name,
                cursorColor: '4DA934'.toColor(),
                decoration: InputDecoration(
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
              SizedBox(height: 10),
              Text(
                'Job',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: '818181'.toColor()),
              ),
              SizedBox(height: 10),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                validator: (value) {
                  if (value == '') {
                    return 'Job cannot be empty';
                  }
                  return null;
                },
                controller: job,
                cursorColor: '4DA934'.toColor(),
                decoration: InputDecoration(
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
              SizedBox(height: 10),
              Text(
                'Date Birth',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: '818181'.toColor()),
              ),
              SizedBox(height: 10),
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
                      date.text =
                          DateFormat('dd-MM-yyyy')
                              .format(pickeddate);
                    });
                  }
                },
                validator: (value) {
                  if (value == '') {
                    return 'Date of Birth cannot be empty';
                  }
                  return null;
                },
                controller: date,
                cursorColor: '4DA934'.toColor(),
                decoration: InputDecoration(
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
              SizedBox(height: 10),
              Text(
                'Email Address',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: '818181'.toColor()),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == '' || !value!.contains('@')) {
                    return 'Email cannot be empty!!';
                  }
                  return null;
                },
                controller: email,
                cursorColor: '4DA934'.toColor(),
                decoration: InputDecoration(
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
              SizedBox(height: 10),
              Text(
                'Password',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: '818181'.toColor()),
              ),
              SizedBox(height: 10),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          if (_formState.currentState!.validate()) {
            Get.back();
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
