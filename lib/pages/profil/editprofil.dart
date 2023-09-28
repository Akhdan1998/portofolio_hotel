import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/pages/profil/profil.dart';
import 'package:supercharged/supercharged.dart';
import 'package:image_picker/image_picker.dart';

class editprofil extends StatefulWidget {
  @override
  State<editprofil> createState() => _editprofilState();
}

class _editprofilState extends State<editprofil> {
  final pass = TextEditingController();
  final job = TextEditingController();
  final email = TextEditingController();
  final _formState = GlobalKey<FormState>();

  bool _obsecureText = true;

  File? _image;

  Future getImage() async {
    final Image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (Image == null) return;
    final imageTemporary = File(Image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

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
            'Edit Profile',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Form(
        key: _formState,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: _image != null
                        ? Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(_image!),
                              ),
                            ),
                          )
                        : Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/foto.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                          top: 140,
                          left: 130,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: '4DA934'.toColor(),
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                ],
              ),
              SizedBox(height: 70),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job',
                      style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: '818181'.toColor()),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      validator: (value) {
                        if (value == '') {
                          return 'Job cannot be empty!!';
                        }
                        return null;
                      },
                      cursorColor: '4DA934'.toColor(),
                      controller: job,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        hintText: 'Proggrammer',
                      ),
                    ),
                    SizedBox(height: 12),
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
                      cursorColor: '4DA934'.toColor(),
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        hintText: 'akhdanhabibie192@gmail.com',
                      ),
                    ),
                    SizedBox(height: 12),
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
                        hintText: 'Password',
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
                          child: Icon(
                            _obsecureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: '4DA934'.toColor(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // height: 50,
        padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: '4DA934'.toColor(),
          ),
          onPressed: () {
            if (_formState.currentState!.validate()) {
              Get.back();
              Fluttertoast.showToast(
                  msg: "Updated profile",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 3,
                  backgroundColor: '4DA934'.toColor(),
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            } else {}
          },
          child: Text(
            'Save Profile',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
