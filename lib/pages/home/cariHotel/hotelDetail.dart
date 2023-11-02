import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:portofolio_hotel/pages/home/cariHotel/cariHotel.dart';
import 'package:supercharged/supercharged.dart';

import '../../../model/cariHotelModel.dart';
import '../home.dart';

class hoteldetail extends StatefulWidget {
  final Hotel hotel;

  hoteldetail({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  State<hoteldetail> createState() => _hoteldetailState();
}

class _hoteldetailState extends State<hoteldetail> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  bool show = false;
  final int cuan = 237000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      color: '4DA934'.toColor(),
                      padding: EdgeInsets.only(left: 20, bottom: 10, right: 20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.to(carihotel());
                            },
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                          ),
                          SizedBox(width: 11),
                          Text(
                            widget.hotel.namaHotel ?? '',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 163,
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 12),
                    ),
                  ],
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  width: MediaQuery.of(context).size.width - 40,
                  height: 212,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.hotel.image ?? ''),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 15,
                          bottom: 15,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 9, top: 3, right: 9, bottom: 3),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '1/12',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.hotel.namaHotel ?? '',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.hotel.daerahHotel ?? '',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: '323232'.toColor()),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_outlined,
                                size: 11, color: 'FFCE31'.toColor()),
                            SizedBox(width: 3),
                            Icon(Icons.star_outlined,
                                size: 11, color: 'FFCE31'.toColor()),
                            SizedBox(width: 3),
                            Icon(Icons.star_outlined,
                                size: 11, color: 'FFCE31'.toColor()),
                            SizedBox(width: 3),
                            Icon(Icons.star_outlined,
                                size: 11, color: 'FFCE31'.toColor()),
                            SizedBox(width: 4),
                            Text(
                              '4.0',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                  color: 'FFCE31'.toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 46,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding:
                    EdgeInsets.only(left: 11, right: 11, top: 8, bottom: 8),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.free_cancellation_outlined,
                            size: 17,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Timetable',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '626161'.toColor()),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.restaurant_outlined,
                            size: 17,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Restaurant',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '626161'.toColor()),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.wifi_outlined,
                            size: 17,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Wifi',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '626161'.toColor()),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.spa,
                            size: 17,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Spa',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '626161'.toColor()),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.local_parking,
                            size: 17,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Parking',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '626161'.toColor()),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.pool,
                            size: 18,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Swimming',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '626161'.toColor()),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_vert,
                            size: 17,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Other',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '626161'.toColor()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              // width: MediaQuery.of(context).size.width,
              // height: 136,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Accommodation',
                    style: GoogleFonts.montserrat().copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: '323232'.toColor()),
                  ),
                  SizedBox(height: 6),
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    // height: 41,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:
                        EdgeInsets.only(left: 13, right: 13, top: 8, bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Chekin',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11,
                                    color: '323232'.toColor()),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '14:00',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: '323232'.toColor()),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chekout',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: '323232'.toColor()),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '12:00',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: '323232'.toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          size: 11,
                          color: Colors.red,
                        ),
                        SizedBox(width: 9),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          // height: 30,
                          child: Text(
                            'Want to check-in early? You can arrange it with the accommodation',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: '626161'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 12),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Description',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ),
                  ),
                  SizedBox(height: 6),
                  (show != false)
                      ? SizedBox()
                      : Container(
                    // height: 96,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Senectus id et euismod pharetra nunc, sit tincidunt ridiculus in. Hendrerit in mi arcu nunc tortor, tellus, eget lectus in. Duis arcu vulputate tortor sit cras posuere. Habitasse et volutpat vitae ultrices tempus urna. Aliquam fringilla scelerisque mauris erat eget leo turpis risus. Fringilla mauris tortor a massa.',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: '323232'.toColor()),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    // height: 40,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          show = !show;
                        });
                      },
                      child: (show == true)
                          ? Text(
                              'Open',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: '4DA934'.toColor(),),
                            )
                          : Text(
                              'Close',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: '4DA934'.toColor(),),
                            ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 235,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: GoogleFonts.montserrat().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: '323232'.toColor()),
                  ),
                  SizedBox(height: 13),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 146,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(6),
                  //   ),
                  //   child: GoogleMap(
                  //     mapType: MapType.hybrid,
                  //     initialCameraPosition: _kGooglePlex,
                  //     onMapCreated: (GoogleMapController controller) {
                  //       _controller.complete(controller);
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 110,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Price starting from',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 9,
                            fontWeight: FontWeight.w300,
                            color: '8F8D8D'.toColor()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        NumberFormat.currency(locale: 'id', decimalDigits: 0)
                            .format(cuan),
                        style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: 'C01414'.toColor()),
                      ),
                      SizedBox(width: 2),
                      Text(
                        '/room/night',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 9,
                            fontWeight: FontWeight.w300,
                            color: '8F8D8D'.toColor()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              // padding: EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: '4DA934'.toColor(),
                  ),
                  child: Text(
                    'View Room',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 34,
            //   child: FlatButton(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10)),
            //     color: 'C01414'.toColor(),
            //     onPressed: () {
            //       Get.to(pilihkamar());
            //     },
            //     child: Text(
            //       'tombollihatkamar',
            //       style: GoogleFonts.poppins().copyWith(
            //           fontSize: 12,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
