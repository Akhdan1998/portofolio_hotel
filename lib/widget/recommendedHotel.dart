import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class marcopolo extends StatelessWidget {
  int saldo = 257000;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 130,
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
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
                image: DecorationImage(image: AssetImage('assets/marcopolo.png')),
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
                    'Marcopolo Hotel',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 8,
                        color: '323232'.toColor(),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Menteng, Jakarta',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 6,
                        color: '848484'.toColor(),
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 10,
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
                          fontSize: 8,
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
                            .format(saldo),
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                          color: '4DA934'.toColor(),
                        ),
                      ),
                      Text(
                        '/night',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 5,
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
