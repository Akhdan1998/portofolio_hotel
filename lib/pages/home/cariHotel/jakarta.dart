import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import '../../../model/jakarta_model.dart';
import 'hotelDetail.dart';

class jakarta extends StatefulWidget {
  final Jakarta? jakartans;

  jakarta(this.jakartans);

  @override
  State<jakarta> createState() => _jakartaState();
}

class _jakartaState extends State<jakarta> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              // Get.to(hoteldetail());
            },
            child: Container(
              color: Colors.white,
              // height: 166,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 98,
                    height: 66,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(widget.jakartans!.image ?? ''),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    width: 98,
                    height: 83,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.jakartans!.namaHotel ?? '',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 10,
                              color: '323232'.toColor(),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.jakartans!.daerahHotel ?? '',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 9,
                              color: '848484'.toColor(),
                              fontWeight: FontWeight.w300),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12,
                              initialRating: 4,
                              itemCount: 4,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(width: 5),
                            Text(
                              '4.0',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                color: Colors.amber,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(widget.jakartans!.harga ?? ''),
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '4DA934'.toColor(),
                              ),
                            ),
                            Text(
                              '/night',
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '757575'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(width: 10),
          // GestureDetector(
          //   onTap: () {
          //     // Get.to(hoteldetail());
          //   },
          //   child: Container(
          //     color: Colors.white,
          //     child: Column(
          //       children: [
          //         Container(
          //           width: 98,
          //           height: 66,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage('assets/verticalhotel2.png'),
          //             ),
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(5),
          //               topLeft: Radius.circular(5),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           width: 98,
          //           height: 59,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.only(
          //               bottomLeft: Radius.circular(5),
          //               bottomRight: Radius.circular(5),
          //             ),
          //             boxShadow: [
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(-1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 0),
          //                 color: Colors.grey.shade300,
          //               ),
          //             ],
          //           ),
          //           padding:
          //           EdgeInsets.only(left: 5, top: 5, bottom: 5),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Container(
          //                 child: Text(
          //                   'Transylvania Hotel',
          //                   overflow: TextOverflow.ellipsis,
          //                   style: GoogleFonts.montserrat().copyWith(
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 10,
          //                       color: '323232'.toColor()),
          //                 ),
          //               ),
          //               SizedBox(height: 3),
          //               Container(
          //                 child: Text(
          //                   'Menteng, Jakarta',
          //                   style: GoogleFonts.montserrat().copyWith(
          //                       fontWeight: FontWeight.w300,
          //                       fontSize: 8,
          //                       color: '848484'.toColor()),
          //                 ),
          //               ),
          //               SizedBox(height: 3),
          //               Row(
          //                 children: [
          //                   RatingBar.builder(
          //                     itemSize: 12,
          //                     initialRating: 4,
          //                     itemCount: 4,
          //                     itemBuilder: (context, _) => Icon(
          //                       Icons.star,
          //                       color: Colors.amber,
          //                     ),
          //                     onRatingUpdate: (rating) {
          //                       print(rating);
          //                     },
          //                   ),
          //                   SizedBox(width: 5),
          //                   Text(
          //                     '4.0',
          //                     style: GoogleFonts.poppins().copyWith(
          //                       fontSize: 10,
          //                       color: Colors.amber,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //               SizedBox(height: 4),
          //               Container(
          //                 child: Row(
          //                   children: [
          //                     Container(
          //                       child: Text(
          //                         NumberFormat.currency(
          //                             locale: 'id', decimalDigits: 0)
          //                             .format(cuan),
          //                         style: GoogleFonts.poppins().copyWith(
          //                             fontWeight: FontWeight.bold,
          //                             fontSize: 10,
          //                             color: '4DA934'.toColor()),
          //                       ),
          //                     ),
          //                     Container(
          //                       child: Text(
          //                         '/Night',
          //                         style: GoogleFonts.montserrat().copyWith(
          //                             fontSize: 7,
          //                             fontWeight: FontWeight.w300,
          //                             color: '757575'.toColor()),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(width: 10),
          // GestureDetector(
          //   onTap: () {
          //     // Get.to(hoteldetail());
          //   },
          //   child: Container(
          //     color: Colors.white,
          //     child: Column(
          //       children: [
          //         Container(
          //           width: 98,
          //           height: 66,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage('assets/verticalhotel3.png'),
          //             ),
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(5),
          //               topLeft: Radius.circular(5),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           width: 98,
          //           height: 59,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.only(
          //               bottomLeft: Radius.circular(5),
          //               bottomRight: Radius.circular(5),
          //             ),
          //             boxShadow: [
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(-1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 0),
          //                 color: Colors.grey.shade300,
          //               ),
          //             ],
          //           ),
          //           padding:
          //           EdgeInsets.only(left: 5, top: 5, bottom: 5),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Sujayana Resort',
          //                 style: GoogleFonts.montserrat().copyWith(
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 10,
          //                     color: '323232'.toColor()),
          //               ),
          //               SizedBox(height: 3),
          //               Text(
          //                 'Menteng, Jakarta',
          //                 style: GoogleFonts.montserrat().copyWith(
          //                     fontWeight: FontWeight.w300,
          //                     fontSize: 8,
          //                     color: '848484'.toColor()),
          //               ),
          //               SizedBox(height: 3),
          //               Row(
          //                 children: [
          //                   RatingBar.builder(
          //                     itemSize: 12,
          //                     initialRating: 4,
          //                     itemCount: 4,
          //                     itemBuilder: (context, _) => Icon(
          //                       Icons.star,
          //                       color: Colors.amber,
          //                     ),
          //                     onRatingUpdate: (rating) {
          //                       print(rating);
          //                     },
          //                   ),
          //                   SizedBox(width: 5),
          //                   Text(
          //                     '4.0',
          //                     style: GoogleFonts.poppins().copyWith(
          //                       fontSize: 10,
          //                       color: Colors.amber,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //               SizedBox(height: 4),
          //               Row(
          //                 children: [
          //                   Text(
          //                     NumberFormat.currency(
          //                         locale: 'id', decimalDigits: 0)
          //                         .format(cuan),
          //                     style: GoogleFonts.poppins().copyWith(
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 10,
          //                         color: '4DA934'.toColor()),
          //                   ),
          //                   Text(
          //                     '/Night',
          //                     style: GoogleFonts.montserrat().copyWith(
          //                         fontSize: 7,
          //                         fontWeight: FontWeight.w300,
          //                         color: '757575'.toColor()),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(width: 10),
          // GestureDetector(
          //   onTap: () {
          //     // Get.to(hoteldetail());
          //   },
          //   child: Container(
          //     color: Colors.white,
          //     child: Column(
          //       children: [
          //         Container(
          //           width: 98,
          //           height: 66,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage('assets/kotaKamar.png'),
          //             ),
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(5),
          //               topLeft: Radius.circular(5),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           width: 98,
          //           height: 59,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.only(
          //               bottomLeft: Radius.circular(5),
          //               bottomRight: Radius.circular(5),
          //             ),
          //             boxShadow: [
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(-1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 0),
          //                 color: Colors.grey.shade300,
          //               ),
          //             ],
          //           ),
          //           padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Marcopolo Hotel',
          //                 style: GoogleFonts.montserrat().copyWith(
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 10,
          //                     color: '323232'.toColor()),
          //               ),
          //               SizedBox(height: 3),
          //               Text(
          //                 'Menteng, Jakarta',
          //                 style: GoogleFonts.montserrat().copyWith(
          //                     fontWeight: FontWeight.w300,
          //                     fontSize: 8,
          //                     color: '848484'.toColor()),
          //               ),
          //               SizedBox(height: 3),
          //               Row(
          //                 children: [
          //                   RatingBar.builder(
          //                     itemSize: 12,
          //                     initialRating: 4,
          //                     itemCount: 4,
          //                     itemBuilder: (context, _) => Icon(
          //                       Icons.star,
          //                       color: Colors.amber,
          //                     ),
          //                     onRatingUpdate: (rating) {
          //                       print(rating);
          //                     },
          //                   ),
          //                   SizedBox(width: 5),
          //                   Text(
          //                     '4.0',
          //                     style: GoogleFonts.poppins().copyWith(
          //                       fontSize: 10,
          //                       color: Colors.amber,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //               SizedBox(height: 4),
          //               Row(
          //                 children: [
          //                   Text(
          //                     NumberFormat.currency(locale: 'id', decimalDigits: 0)
          //                         .format(cuan),
          //                     style: GoogleFonts.poppins().copyWith(
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 10,
          //                         color: '4DA934'.toColor()),
          //                   ),
          //                   Text(
          //                     '/Night',
          //                     style: GoogleFonts.montserrat().copyWith(
          //                         fontSize: 8,
          //                         fontWeight: FontWeight.w300,
          //                         color: '757575'.toColor()),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(width: 10),
          // GestureDetector(
          //   onTap: () {
          //     // Get.to(hoteldetail());
          //   },
          //   child: Container(
          //     color: Colors.white,
          //     child: Column(
          //       children: [
          //         Container(
          //           width: 98,
          //           height: 66,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage('assets/verticalhotel2.png'),
          //             ),
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(5),
          //               topLeft: Radius.circular(5),
          //             ),
          //           ),
          //         ),
          //         Container(
          //           width: 98,
          //           height: 59,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.only(
          //               bottomLeft: Radius.circular(5),
          //               bottomRight: Radius.circular(5),
          //             ),
          //             boxShadow: [
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(-1, 1),
          //                 color: Colors.grey.shade300,
          //               ),
          //               BoxShadow(
          //                 blurRadius: 1,
          //                 offset: const Offset(1, 0),
          //                 color: Colors.grey.shade300,
          //               ),
          //             ],
          //           ),
          //           padding:
          //           EdgeInsets.only(left: 5, top: 5, bottom: 5),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Transylvania Hotel',
          //                 overflow: TextOverflow.ellipsis,
          //                 style: GoogleFonts.montserrat().copyWith(
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 10,
          //                     color: '323232'.toColor()),
          //               ),
          //               SizedBox(height: 3),
          //               Text(
          //                 'Menteng, Jakarta',
          //                 style: GoogleFonts.montserrat().copyWith(
          //                     fontWeight: FontWeight.w300,
          //                     fontSize: 8,
          //                     color: '848484'.toColor()),
          //               ),
          //               SizedBox(height: 3),
          //               Row(
          //                 children: [
          //                   RatingBar.builder(
          //                     itemSize: 12,
          //                     initialRating: 4,
          //                     itemCount: 4,
          //                     itemBuilder: (context, _) => Icon(
          //                       Icons.star,
          //                       color: Colors.amber,
          //                     ),
          //                     onRatingUpdate: (rating) {
          //                       print(rating);
          //                     },
          //                   ),
          //                   SizedBox(width: 5),
          //                   Text(
          //                     '4.0',
          //                     style: GoogleFonts.poppins().copyWith(
          //                       fontSize: 10,
          //                       color: Colors.amber,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //               SizedBox(height: 4),
          //               Container(
          //                 child: Row(
          //                   children: [
          //                     Text(
          //                       NumberFormat.currency(
          //                           locale: 'id', decimalDigits: 0)
          //                           .format(cuan),
          //                       style: GoogleFonts.poppins().copyWith(
          //                           fontWeight: FontWeight.bold,
          //                           fontSize: 10,
          //                           color: '4DA934'.toColor()),
          //                     ),
          //                     Text(
          //                       '/Night',
          //                       style: GoogleFonts.montserrat().copyWith(
          //                           fontSize: 7,
          //                           fontWeight: FontWeight.w300,
          //                           color: '757575'.toColor()),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(width: 20),
        ],
      ),
    );
  }
}
