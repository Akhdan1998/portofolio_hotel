import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../model/destinasi_model.dart';

class destination extends StatefulWidget {
  final Destinasi? destinasi;

  destination(this.destinasi);

  @override
  State<destination> createState() => _destinationState();
}

class _destinationState extends State<destination> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 173,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 219,
              height: 122,
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
                    image: AssetImage(widget.destinasi!.imageDestinasi ?? ''), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ),
            Container(
              width: 219,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.destinasi!.namaDestinasi ?? '-',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            color: '323232'.toColor(),
                            fontWeight: FontWeight.bold),
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
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            color: '626161'.toColor(),
                            size: 11,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Free Cancellation',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 9, color: '626161'.toColor()),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.restaurant,
                            color: '626161'.toColor(),
                            size: 11,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Breakfast',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 9, color: '626161'.toColor()),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.wifi,
                            color: '626161'.toColor(),
                            size: 11,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Wifi',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 9, color: '626161'.toColor()),
                          )
                        ],
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
