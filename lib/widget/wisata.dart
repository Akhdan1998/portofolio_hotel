import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class wisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.festival,
                      color: '4DA934'.toColor(),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Vehicle',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: '6C6C6C'.toColor(),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Order ID : 103714992',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 9,
                      color: '6C6C6C'.toColor(),
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/safari.png', scale: 1.5),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Taman Safari Bogor',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: '323232'.toColor(),
                          ),
                        ),
                        Text(
                          'Safari Siang + Panda Weekdays',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: '747474'.toColor(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                RatingBar.builder(
                  itemSize: 13,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) =>
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range, color: 'BCBCBC'.toColor(), size: 15),
                        SizedBox(width: 5),
                        Text(
                          DateFormat.yMMMEd().add_Hm().format(DateTime.now()),
                          style: GoogleFonts.poppins()
                              .copyWith(fontSize: 9, color: '9C9C9C'.toColor()),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding:
                  EdgeInsets.only(right: 11, left: 11, top: 3, bottom: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: '8FFF67'.toColor(),
                  ),
                  child: Text(
                    'Finished',
                    style: GoogleFonts.poppins()
                        .copyWith(fontSize: 8, color: '028E08'.toColor()),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              children: [
                Icon(Icons.update, color: 'BCBCBC'.toColor(), size: 15),
                SizedBox(width: 5),
                Text(
                  '1 Ticket',
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 9, color: '9C9C9C'.toColor()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
