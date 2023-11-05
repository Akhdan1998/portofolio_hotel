import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_hotel/pages/home/cariHotel/hotelDetail.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../model/cariHotelModel.dart';

class marcopolo extends StatefulWidget {
  final Hotel? hotel;

  marcopolo(this.hotel);

  @override
  State<marcopolo> createState() => _marcopoloState();
}

class _marcopoloState extends State<marcopolo> {
  int saldo = 257000;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(hoteldetail(hotel: widget.hotel!));
      },
      child: Container(
        height: 153,
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
                    image: AssetImage(widget.hotel!.image ?? ''),
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
              // height: 66,
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
              padding: EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.hotel!.namaHotel ?? '',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 10,
                        color: '323232'.toColor(),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.hotel!.daerahHotel ?? '',
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
                                locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                            .format(widget.hotel!.harga ?? ''),
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
    );
  }
}
