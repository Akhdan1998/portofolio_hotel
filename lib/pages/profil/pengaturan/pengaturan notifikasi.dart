import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class pengaturannotifikasi extends StatefulWidget {
  @override
  State<pengaturannotifikasi> createState() => _pengaturannotifikasiState();
}

class _pengaturannotifikasiState extends State<pengaturannotifikasi> {
  bool emailAktifitas = true;
  bool notifikasiAktifitas = true;
  bool emailSpesial = true;
  bool notifikasiSpesial = true;
  bool emailPengigat = true;
  bool notifikasiPengigat = true;

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
            'Settings',
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
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Activity',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: '4A4A4A'.toColor(),
                      ),
                    ),
                    Text(
                      'Make sure your account is safe by monitoring login activity, registration and OTP notifications.',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: '747474'.toColor(),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: '4A4A4A'.toColor(),
                          ),
                        ),
                        Container(
                          height: 16,
                          // width: 10,
                          padding: EdgeInsets.zero,
                          child: Switch.adaptive(
                            activeColor: '4DA934'.toColor(),
                            activeTrackColor: Colors.green,
                            value: emailAktifitas,
                            onChanged: (value) => setState(() {
                              this.emailAktifitas = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 30,
                      color: '4A4A4A'.toColor(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Push Notification',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: '4A4A4A'.toColor(),
                          ),
                        ),
                        Container(
                          height: 16,
                          // width: 10,
                          padding: EdgeInsets.zero,
                          child: Switch.adaptive(
                            activeColor: '4DA934'.toColor(),
                            activeTrackColor: Colors.green,
                            value: notifikasiAktifitas,
                            onChanged: (value) => setState(() {
                              this.notifikasiAktifitas = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 12),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special for you',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: '4A4A4A'.toColor(),
                      ),
                    ),
                    Text(
                      "You'll always want limited discounts, exclusive offers, tips, and info on new features.",
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: '747474'.toColor(),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: '4A4A4A'.toColor(),
                          ),
                        ),
                        Container(
                          height: 16,
                          // width: 10,
                          padding: EdgeInsets.zero,
                          child: Switch.adaptive(
                            activeColor: '4DA934'.toColor(),
                            activeTrackColor: Colors.green,
                            value: emailSpesial,
                            onChanged: (value) => setState(() {
                              this.emailSpesial = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 30,
                      color: '4A4A4A'.toColor(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Push Notification',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: '4A4A4A'.toColor(),
                          ),
                        ),
                        Container(
                          height: 16,
                          // width: 10,
                          padding: EdgeInsets.zero,
                          child: Switch.adaptive(
                            activeColor: '4DA934'.toColor(),
                            activeTrackColor: Colors.green,
                            value: notifikasiSpesial,
                            onChanged: (value) => setState(() {
                              this.notifikasiSpesial = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 12),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special for you',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: '4A4A4A'.toColor(),
                      ),
                    ),
                    Text(
                      "You'll always want limited discounts, exclusive offers, tips, and info on new features.",
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: '747474'.toColor(),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: '4A4A4A'.toColor(),
                          ),
                        ),
                        Container(
                          height: 16,
                          // width: 10,
                          padding: EdgeInsets.zero,
                          child: Switch.adaptive(
                            activeColor: '4DA934'.toColor(),
                            activeTrackColor: Colors.green,
                            value: emailPengigat,
                            onChanged: (value) => setState(() {
                              this.emailPengigat = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 30,
                      color: '4A4A4A'.toColor(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Push Notification',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: '4A4A4A'.toColor(),
                          ),
                        ),
                        Container(
                          height: 16,
                          // width: 10,
                          padding: EdgeInsets.zero,
                          child: Switch.adaptive(
                            activeColor: '4DA934'.toColor(),
                            activeTrackColor: Colors.green,
                            value: notifikasiPengigat,
                            onChanged: (value) => setState(() {
                              this.notifikasiPengigat = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 12),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
