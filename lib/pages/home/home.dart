import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:portofolio_hotel/model/artikel_model.dart';
import 'package:portofolio_hotel/model/cariHotelModel.dart';
import 'package:portofolio_hotel/pages/reservasi/hotel.dart';
import 'package:portofolio_hotel/story/story_circle.dart';
import 'package:portofolio_hotel/story/story_model.dart';
import 'package:portofolio_hotel/story/storypage.dart';
import 'package:portofolio_hotel/model/user_model.dart';
import 'package:portofolio_hotel/widget/artikel/artikel.dart';
import 'package:portofolio_hotel/widget/artikel/artikelHome.dart';
import 'package:portofolio_hotel/widget/bestdestination.dart';
import 'package:portofolio_hotel/widget/recommendedHotel.dart';
import 'package:supercharged/supercharged.dart';
import 'package:story/story.dart';
import 'package:story/story_image.dart';
import 'package:badges/badges.dart' as badges;
import '../../model/destinasi_model.dart';
import '../../widget/destinasiwisata.dart';
import 'cariHotel/cariHotel.dart';
import 'cariHotel/hotelDetail.dart';
import 'cariKota/cariKota.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  // bool _isPlay = false;
  late AnimationController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map<String, dynamic>> _items = List.generate(1, (index) => {});

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
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: '4DA934'.toColor(),
        // leading: IconButton(
        //   onPressed: () {
        //     if (_isPlay == false) {
        //       _controller.forward();
        //       _isPlay = true;
        //     } else {
        //       _controller.reverse();
        //       _isPlay = true;
        //     }
        //   },
        //   icon: AnimatedIcon(
        //     color: Colors.white,
        //     icon: AnimatedIcons.menu_home,
        //     progress: _controller,
        //     size: 30,
        //   ),
        // ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 65,
        title: Image.asset('assets/hotelpedia.png', scale: 3),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 14, top: 18),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                label: Text('3'),
                child: Icon(
                  Icons.notifications,
                  size: 25,
                  color: 'FFFFFF'.toColor(),
                ),
                // badgeColor: '79DD2A'.toColor(),
                // toAnimate: false,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: '4DA934'.toColor(),
              padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 15),
              child: GestureDetector(
                onTap: () {
                  Get.to(cariKota());
                },
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search,
                        color: 'C4C4C4'.toColor(),
                        size: 20,
                      ),
                      SizedBox(width: 7),
                      Text(
                        'Find Your Hotel',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 15,
                          color: 'C4C4C4'.toColor(),
                        ),
                      ),
                    ],
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
                    fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 90,
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
                    fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      Get.to(carihotel());
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: 'EEEEEE'.toColor(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(15),
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
                              fontSize: 13),
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
                          padding: EdgeInsets.all(15),
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
                              fontSize: 13),
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
                          padding: EdgeInsets.all(15),
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
                              fontSize: 13),
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
                          padding: EdgeInsets.all(15),
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
                              fontSize: 13),
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
                          padding: EdgeInsets.all(15),
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
                              fontSize: 13),
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
                          padding: EdgeInsets.all(15),
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
                              fontSize: 13),
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
                    fontSize: 14),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Row(
                    children: allHotels
                        .map(
                          (e) => Row(
                            children: [
                              marcopolo(e),
                              SizedBox(width: 16),
                            ],
                          )
                        )
                        .toList(),
                  ),
                  // SizedBox(width: 16),
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
                    fontSize: 14),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Row(
                    children: allDestinasi
                        .map(
                          (e) => Row(
                            children: [
                              destination(e),
                              SizedBox(width: 16),
                            ],
                          ),
                        )
                        .toList(),
                  ),
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
            Column(
              children: allArtikel
                  .map(
                    (e) => Column(
                      children: [
                        artikelHome(e),
                        SizedBox(height: 8),

                      ],
                    ),
                  )
                  .toList(),
            ),
            // artikelHome(),
            // SizedBox(height: 8),
            // artikelHome(),
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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 60,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      '4DA934'.toColor(),
                      Colors.white,
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/akhdan.jpeg'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Akhdan Habibie',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: '323232'.toColor(),
                          ),
                        ),
                        Text(
                          'Junior Proggramer',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: '323232'.toColor(),
                          ),
                        ),
                        Text(
                          'Flutter Developer',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: '323232'.toColor(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 135,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: MediaQuery.of(context).size.width - 115,
                child: Text(
                  'Flutter Developer with app/web development experience, assisting in the design process and application maintenance with a focus on improving efficient features, and looking for bugs in the company\'s apps/web.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: '323232'.toColor(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 255,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Divider(
                  color: '323232'.toColor(),
                ),
              ),
            ),
            Positioned(
              top: 264,
              child: Container(
                width: MediaQuery.of(context).size.width - 125,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: ListView.builder(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.manual,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    itemCount: _items.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height + 1650,
                        child: Column(
                          children: [
                            //contact
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.symmetric(
                                //     vertical: 10, horizontal: 20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Contact',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    // alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.call,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '081290763984',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.email,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'akhdanhabibie192@gmail.com',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              height: 24,
                                              width: 24,
                                              // padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                'in',
                                                style: GoogleFonts.aBeeZee()
                                                    .copyWith(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'akhdanhabibie',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.home,
                                                size: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'Depok, Jawa Barat',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                // color: '4DA934'.toColor(),
                                              ),
                                              child: Image.asset(
                                                'assets/github.png',
                                                scale: 22,
                                                color: '4DA934'.toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'https://github.com/Akhdan1998',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 3, right: 2),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Image.asset(
                                                'assets/ig.png',
                                                scale: 52,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'akhddan',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 3, right: 2),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Image.asset(
                                                'assets/ig.png',
                                                scale: 52,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'pendekargendut',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                            //biodata
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.all(20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Biodata',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.male,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'Male',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.pregnant_woman,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'Jakarta, 24 March 1998 (25 Years)',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.monitor_weight,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '75 Kg',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.height,
                                                size: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '165 Cm',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Container(
                                              // padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Image.asset(
                                                'assets/ring.png',
                                                scale: 40,
                                                color: '4DA934'.toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'Not married yet',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                            //pendidikan
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.all(20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Education',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.school,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Smk Al-Hidayah 1 Jakarta',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 14,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'Computer Network Engineering',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.school,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'ISTN',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 14,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'Bachelor of Computer Science',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'IPK 3,32 / 4,0',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                            //pengalaman kerja
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.all(20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Work experience',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: '4DA934'.toColor(),
                                          ),
                                          child: Icon(
                                            Icons.work,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'PT. Arkana Dwi Mutiara',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              'Junior Programmer (Flutter Develop)',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12.5,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              'February 2022 – October 2023',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12.5,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              'Job description :',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12.5,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '- ',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      203,
                                                  child: Text(
                                                    'Monitor the application process and resolve bugs or errors in the application.',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontSize: 12.5,
                                                      color: '323232'.toColor(),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '- ',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      203,
                                                  child: Text(
                                                    'Testing the program and discussing with the group to improve the effectiveness of the application.',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontSize: 12.5,
                                                      color: '323232'.toColor(),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '- ',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      203,
                                                  child: Text(
                                                    'Focus on designing, testing, and building applications.',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontSize: 12.5,
                                                      color: '323232'.toColor(),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                            //pengalaman magang
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.all(20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Internship experience',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: '4DA934'.toColor(),
                                          ),
                                          child: Icon(
                                            Icons.work,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'SMA Mawaddah',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              'Computer Lab Operator',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12.5,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              'November 2020 – December 2020',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12.5,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Text(
                                              'Job description :',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 12.5,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '- ',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      203,
                                                  child: Text(
                                                    'Create an Android-based home learning application with Adobe Animate (Flash).',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontSize: 12.5,
                                                      color: '323232'.toColor(),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                            //pelatihan
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.all(20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Training',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.home_work,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Junior Office Operator',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 14,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'KOMINFO',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'Agustus 2020',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'Training Description :',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Peripheral Equipment.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Basic level word processing software.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Basic level presentation software.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Email access software.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Internet based application.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Ensure data validity.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: '4DA934'.toColor(),
                                              ),
                                              child: Icon(
                                                Icons.home_work,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Junior Office Operator',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 14,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'KOMINFO',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'July 2021',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'Training Description :',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Routing configuration on device 1 network between autonomous systems.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Gathering the technical needs of users using the network.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Designing network addressing.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Installing network cables.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Merancang topologi jaringan.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Determine network device specifications.',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                            //skills
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.all(20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Skills & Competencies',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Android Studio',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Visual Studio Code',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Flutter',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Figma',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Firebase',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Github',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Jira',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'PHP myAdmin/SQL',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 14,
                                                color: '323232'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                            //organinasi
                            ExpansionTile(
                                iconColor: '323232'.toColor(),
                                collapsedIconColor: '323232'.toColor(),
                                // childrenPadding: const EdgeInsets.all(20),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: Text(
                                  'Organizational experience',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17, right: 17, bottom: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.groups,
                                              size: 20,
                                              color: '4DA934'.toColor(),
                                            ),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      189,
                                                  child: Text(
                                                    'Betawi Traditional Pencak Silat College',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontSize: 14,
                                                      color: '323232'.toColor(),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'BEKSI',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'July 2014 – present',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Text(
                                                  'Training Description :',
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 12.5,
                                                    color: '323232'.toColor(),
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Opening prayer',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Leading practice',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Coordinate the training system',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Practicing the trained function',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Mental training',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Evaluation',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '- ',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 12.5,
                                                        color:
                                                            '323232'.toColor(),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              203,
                                                      child: Text(
                                                        'Closing prayer',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 12.5,
                                                          color: '323232'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                // thickness: 1,
                                height: 0,
                                color: '323232'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
