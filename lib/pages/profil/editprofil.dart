import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class editprofil extends StatefulWidget {
  @override
  State<editprofil> createState() => _editprofilState();
}

class _editprofilState extends State<editprofil> {
  final pass = TextEditingController();
  final job = TextEditingController();
  final email = TextEditingController();
  bool _obsecureText = true;

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
      body: SingleChildScrollView(
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
                  onTap: () {},
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('assets/akhdan.jpeg'),
                            fit: BoxFit.cover)),
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
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 90),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Job',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 13,
                      color: '818181'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
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
                      hintText: 'Ex: Programmer',
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Email Address',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 13,
                      color: '818181'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
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
                      hintText: 'Ex: akhdanhabibie@gmail.com',
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Password',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 13,
                      color: '818181'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: pass,
                    obscureText: _obsecureText,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obsecureText = !_obsecureText;
                          });
                        },
                        child: Icon(_obsecureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(width: 1, color: '4DA934'.toColor()),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      hintText: 'Ex: Password',
                    ),
                  ),
                ],
              ),
            ),
          ],
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
          onPressed: () {},
          child: Text(
            'Save Profile',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
