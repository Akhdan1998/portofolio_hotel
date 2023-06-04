import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class kereta extends StatelessWidget {
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
                      Icons.train,
                      color: '4DA934'.toColor(),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Train',
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
              children: [
                Text(
                  'Bandung',
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 10, color: '6C6C6C'.toColor()),
                ),
                SizedBox(width: 5),
                Icon(Icons.commit, size: 15, color: 'C4C4C4'.toColor()),
                SizedBox(width: 5),
                Text(
                  'Solo',
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 10, color: '6C6C6C'.toColor()),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.group, color: 'BCBCBC'.toColor(), size: 15),
                SizedBox(width: 5),
                Text(
                  '1 Dewasa',
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 9, color: '9C9C9C'.toColor()),
                ),
              ],
            ),
            SizedBox(height: 5),
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
            SizedBox(height: 3),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.update, color: 'BCBCBC'.toColor(), size: 15),
                    SizedBox(width: 5),
                    Text(
                      'One-way',
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 9, color: '9C9C9C'.toColor()),
                    ),
                  ],
                ),
                Container(
                  padding:
                  EdgeInsets.only(right: 11, left: 11, top: 3, bottom: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: 'FCE2B1'.toColor(),
                  ),
                  child: Text(
                    'Not yet paid',
                    style: GoogleFonts.poppins()
                        .copyWith(fontSize: 8, color: 'D37200'.toColor()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
