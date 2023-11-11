import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import '../../model/artikel_model.dart';
import 'artikel.dart';
import 'artikelDetail.dart';

class artikelHome extends StatefulWidget {
  final Artikel? artikels;

  artikelHome(this.artikels);

  @override
  State<artikelHome> createState() => _artikelHomeState();
}

class _artikelHomeState extends State<artikelHome> {
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {
          Get.to(artikelDetail(artikel: widget.artikels));
        },
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width - 102,
                        child: Text(
                          widget.artikels!.deskripsi ?? '-',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              color: '323232'.toColor(),
                              fontSize: 13),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.artikels!.nama ?? '-',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                color: '919191'.toColor(),
                                fontSize: 12),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.radio_button_on,
                              size: 7, color: '919191'.toColor()),
                          SizedBox(width: 5),
                          Text(
                            widget.artikels!.tanggal ?? '-',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                color: '919191'.toColor(),
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    // alignment: Alignment.center,
                    // color: Colors.cyan,
                    child: Image.asset(
                      widget.artikels!.image ?? '',
                      scale: 2, fit: BoxFit.cover,
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
