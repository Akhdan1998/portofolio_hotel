import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';

class media extends StatefulWidget {
  @override
  State<media> createState() => _mediaState();
}

class _mediaState extends State<media> {
  bool github = false;
  bool linkedin = false;
  bool portofolio = false;
  bool akhdan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 385,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 50),
                height: 150,
                color: '4DA934'.toColor(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Connect to Social Media',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 110,
                left: 16,
                right: 16,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final _urlGithub =
                              'https://github.com/Akhdan1998/portofolio_hotel';

                          if (await canLaunch(_urlGithub)) {
                            await launch(_urlGithub);
                          }
                          setState(() {
                            github = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(11),
                          decoration: BoxDecoration(
                            color: 'F5F5F5'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/github.png',
                                    scale: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Connect to Github',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      color: '626161'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                              Text(github ? 'Connected' : 'Unlinked',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  color: github ? '4DA934'.toColor() : 'C20000'.toColor(),
                                ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () async {
                          final _urlLinkedIn =
                              'https://www.linkedin.com/in/akhdan-habibie-401590179';

                          if (await canLaunch(_urlLinkedIn)) {
                            await launch(_urlLinkedIn);
                          }
                          setState(() {
                            linkedin = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(11),
                          decoration: BoxDecoration(
                            color: 'F5F5F5'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/linkedin.png',
                                    scale: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Connect to LinkedIn',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      color: '626161'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                              Text(linkedin ? 'Connected' : 'Unlinked',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  color: linkedin ? '4DA934'.toColor() : 'C20000'.toColor(),
                                ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () async {
                          final _urlIg =
                              'https://www.instagram.com/akhddan/';

                          if (await canLaunch(_urlIg)) {
                            await launch(_urlIg);
                          }
                          setState(() {
                            akhdan = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(11),
                          decoration: BoxDecoration(
                            color: 'F5F5F5'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/instagram.png',
                                    scale: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Connect to Instagram',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      color: '626161'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                              Text(akhdan ? 'Following' : 'Follow',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  color: akhdan ? '4DA934'.toColor() : 'C20000'.toColor(),
                                ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () async {
                          final _urlIgPortofolio =
                              'https://www.instagram.com/pendekargendut/';

                          if (await canLaunch(_urlIgPortofolio)) {
                            await launch(_urlIgPortofolio);
                          }
                          setState(() {
                            portofolio = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(11),
                          decoration: BoxDecoration(
                            color: 'F5F5F5'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/instagram.png',
                                    scale: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Connect to Instagram Portofolio',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 13,
                                      color: '626161'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                              Text(portofolio ? 'Following' : 'Follow',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  color: portofolio ? '4DA934'.toColor() : 'C20000'.toColor(),
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
