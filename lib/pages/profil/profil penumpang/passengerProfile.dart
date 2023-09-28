import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class PassengerProfile extends StatefulWidget {
  @override
  State<PassengerProfile> createState() => _PassengerProfileState();
}

class _PassengerProfileState extends State<PassengerProfile> {
  final title = TextEditingController();
  final nik = TextEditingController();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final date = TextEditingController();
  final phone = TextEditingController();
  final _formState = GlobalKey<FormState>();

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
            'Passenger Profile',
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
          clipBehavior: Clip.hardEdge,
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: '4DA934'.toColor(),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: 'F5F5F5'.toColor(),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.person, size: 20),
                        SizedBox(width: 6),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Mr. ',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 13,
                                    color: '323232'.toColor(),
                                  ),
                                ),
                                Text(
                                  'Akhdan Habibie',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 13,
                                    color: '323232'.toColor(),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 92,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width - 285,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'KTP',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              ': 1234567890',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width - 270,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'No. Hp',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              ': 081290763984',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width - 285,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Birthday',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              ': 24 Mar 1998',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width - 279,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Category',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              ': Mature',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width - 263,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Citizenship',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              ': Indonesia',
                                              style: GoogleFonts.poppins().copyWith(
                                                fontSize: 12,
                                                color: '5C5C5C'.toColor(),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: title,
                      validator: (value) {
                        if (value == '') {
                          return 'Title cannot be empty!!';
                        }
                        return null;
                      },
                      cursorColor: '4DA934'.toColor(),
                      decoration: InputDecoration(
                        // hintText: 'Mr/Mrs',
                        label: Text('Title'),
                        labelStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          color: '4DA934'.toColor(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: nik,
                      validator: (value) {
                        if (value == '') {
                          return 'NIK cannot be empty!!';
                        }
                        return null;
                      },
                      cursorColor: '4DA934'.toColor(),
                      decoration: InputDecoration(
                        // hintText: 'KTP',
                        label: Text('NIK'),
                        labelStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          color: '4DA934'.toColor(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: firstname,
                      validator: (value) {
                        if (value == '') {
                          return 'First Name cannot be empty!!';
                        }
                        return null;
                      },
                      cursorColor: '4DA934'.toColor(),
                      decoration: InputDecoration(
                        // hintText: 'First name',
                        label: Text('First name'),
                        labelStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          color: '4DA934'.toColor(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      validator: (value) {
                        if (value == '') {
                          return 'Last Name cannot be empty!!';
                        }
                        return null;
                      },
                      controller: lastname,
                      cursorColor: '4DA934'.toColor(),
                      decoration: InputDecoration(
                        // hintText: 'Last name',
                        label: Text('Last name'),
                        labelStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          color: '4DA934'.toColor(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
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
                        // hintText: 'Email',
                        label: Text('Email'),
                        labelStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          color: '4DA934'.toColor(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1945),
                            lastDate: DateTime(2500));

                        if (pickeddate != null) {
                          setState(() {
                            date.text =
                                DateFormat('dd-MM-yyyy').format(pickeddate);
                          });
                        }
                      },
                      validator: (value) {
                        if (value == '') {
                          return 'Date of Birth cannot be empty!!';
                        }
                        return null;
                      },
                      controller: date,
                      cursorColor: '4DA934'.toColor(),
                      decoration: InputDecoration(
                        // hintText: 'Date of birth',
                        label: Text('Date of birth'),
                        labelStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          color: '4DA934'.toColor(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == '') {
                          return 'Number cannot be empty!!';
                        }
                        return null;
                      },
                      controller: phone,
                      cursorColor: '4DA934'.toColor(),
                      decoration: InputDecoration(
                        // hintText: 'Phone number',
                        label: Text('Phone number'),
                        labelStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          color: '4DA934'.toColor(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(width: 1, color: '4DA934'.toColor()),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
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
                  msg: "Success",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP,
                  timeInSecForIosWeb: 3,
                  backgroundColor: '4DA934'.toColor(),
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            } else {}
          },
          child: Text(
            'Save Orderer Profile',
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
