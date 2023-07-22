import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/story/story_circle.dart';
import 'package:portofolio_hotel/story/story_model.dart';
import 'package:portofolio_hotel/story/storypage.dart';
import 'package:portofolio_hotel/pages/home/user_model.dart';
import 'package:portofolio_hotel/widget/artikel/artikel.dart';
import 'package:portofolio_hotel/widget/artikel/artikelHome.dart';
import 'package:portofolio_hotel/widget/bestdestination.dart';
import 'package:portofolio_hotel/widget/recommendedHotel.dart';
import 'package:supercharged/supercharged.dart';
import 'package:story/story.dart';
import 'package:story/story_image.dart';

import '../../widget/destinasiwisata.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _openStory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: '4DA934'.toColor(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                if (_isPlay == false) {
                  _controller.forward();
                  _isPlay = true;
                } else {
                  _controller.reverse();
                  _isPlay = true;
                }
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_home,
                progress: _controller,
                size: 30,
              ),
            ),
            Image.asset('assets/hotelpedia.png', scale: 3.5),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                size: 27,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              // height: 75,
              color: '4DA934'.toColor(),
              padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 15),
              child: Container(
                // height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Find Your Hotel',
                    hintStyle: GoogleFonts.poppins()
                        .copyWith(color: 'C4C4C4'.toColor(), fontSize: 15),
                    prefixIcon: Icon(Icons.search, color: 'C4C4C4'.toColor()),
                    // contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: '4DA934'.toColor(),
              height: 25,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Near By:',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '4D4B4B'.toColor(),
                    fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 88,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return StoryCircle(
                    function: _openStory,
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Our Services',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '4D4B4B'.toColor(),
                    fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: 'EEEEEE'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(11),
                          child: Image.asset(
                            'assets/hotel.png',
                            scale: 1.2,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Hotel',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '5E5E5E'.toColor(),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: 'EEEEEE'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(11),
                          child: Image.asset(
                            'assets/pesawat.png',
                            scale: 1.2,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Plane',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '5E5E5E'.toColor(),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: 'EEEEEE'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(11),
                          child: Image.asset(
                            'assets/kereta.png',
                            scale: 1.2,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Train',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '5E5E5E'.toColor(),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: 'EEEEEE'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(11),
                          child: Image.asset(
                            'assets/wisata.png',
                            scale: 1.2,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Tour',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '5E5E5E'.toColor(),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Get.to(artikel());
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: 'EEEEEE'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(11),
                          child: Image.asset(
                            'assets/artikel.png',
                            scale: 1.2,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Article',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '5E5E5E'.toColor(),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: 'EEEEEE'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(11),
                          child: Image.asset(
                            'assets/media.png',
                            scale: 1.2,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Video',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '5E5E5E'.toColor(),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Recommended Hotel',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '4D4B4B'.toColor(),
                    fontSize: 12),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  marcopolo(),
                  SizedBox(width: 15),
                  marcopolo(),
                  SizedBox(width: 15),
                  marcopolo(),
                  SizedBox(width: 15),
                  marcopolo(),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Best Destination Hotel',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '4D4B4B'.toColor(),
                    fontSize: 12),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  destination(),
                  SizedBox(width: 15),
                  destination(),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Hot Articles',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '4D4B4B'.toColor(),
                    fontSize: 12),
              ),
            ),
            SizedBox(height: 8),
            artikelHome(),
            SizedBox(height: 8),
            artikelHome(),
            SizedBox(height: 8),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Tourist Destination',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '4D4B4B'.toColor(),
                    fontSize: 12),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  destinationwisata(),
                  SizedBox(width: 15),
                  destinationwisata(),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
