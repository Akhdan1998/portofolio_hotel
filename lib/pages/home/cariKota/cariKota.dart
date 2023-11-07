import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import '../../../model/kota.dart';
import '../../../widget/kamar.dart';
import '../home.dart';
import 'kotaDetils.dart';

class cariKota extends StatefulWidget {
  @override
  State<cariKota> createState() => _cariKotaState();
}

class _cariKotaState extends State<cariKota> {
  List<Kota> kotas = allKotas;
  final kotaCari = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: '4DA934'.toColor(),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.to(home());
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          height: 40,
          child: TextField(
            controller: kotaCari,
            cursorColor: '4DA934'.toColor(),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 15),
              hintText: 'Find Your Hotel',
              hintStyle: GoogleFonts.poppins()
                  .copyWith(color: 'C4C4C4'.toColor(), fontSize: 15),
              prefixIcon: Icon(Icons.search, color: 'C4C4C4'.toColor()),
              // contentPadding: EdgeInsets.only(left: 20, bottom: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(
                  width: 1,
                  color: '4DA934'.toColor(),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: kotas.length,
              itemBuilder: (context, index) {
                final kota = kotas[index];
                return ListTile(
                  title: Text(kota.city!),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            kotaDetils(kota: kota)),
                  ),
                );
              }),
        ),
        ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   physics: ClampingScrollPhysics(),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Container(
      //         color: '4DA934'.toColor(),
      //         height: 25,
      //         child: Container(
      //           decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(40),
      //                   topRight: Radius.circular(40))),
      //         ),
      //       ),
      //       Container(
      //         padding: EdgeInsets.only(left: 16, right: 16),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               'All Cities',
      //               style: GoogleFonts.poppins().copyWith(
      //                   fontSize: 13,
      //                   color: '4D4D4D'.toColor(),
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(height: 15),
      //             Column(
      //               children: kota
      //                   .map(
      //                     (e) => GestureDetector(
      //                       onTap: () {
      //                         Get.to(kamar());
      //                       },
      //                       child: Container(
      //                         height: 50,
      //                         color: Colors.white,
      //                         child: Column(
      //                           children: [
      //                             Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.spaceBetween,
      //                               children: [
      //                                 Text(
      //                                   e.city ?? '',
      //                                   style: GoogleFonts.poppins().copyWith(
      //                                     fontSize: 12,
      //                                     color: '4D4D4D'.toColor(),
      //                                   ),
      //                                 ),
      //                                 Icon(Icons.chevron_right),
      //                               ],
      //                             ),
      //                             Divider(),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   )
      //                   .toList(),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 50),
      //     ],
      //   ),
      // ),
    );
  }
}
