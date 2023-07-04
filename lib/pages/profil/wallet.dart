import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:portofolio_hotel/widget/button_wallet.dart';
import 'package:supercharged/supercharged.dart';

import '../../model/wallet_model.dart';

class wallet extends StatefulWidget {
  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  int selectedNominal = 0;
  List<Select> select = [
    Select(
      id: '1',
      nominal: 50000,
    ),
    Select(
      id: '2',
      nominal: 100000,
    ),
    Select(
      id: '3',
      nominal: 150000,
    ),
    Select(
      id: '4',
      nominal: 200000,
    ),
    Select(
      id: '5',
      nominal: 250000,
    ),
    Select(
      id: '6',
      nominal: 500000,
    ),
    Select(
      id: '7',
      nominal: 1000000,
    ),
    Select(
      id: '8',
      nominal: 2500000,
    ),
    Select(
      id: '9',
      nominal: 5000000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: '4DA934'.toColor(),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'My Wallet',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 18, right: 18, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  color: '4DA934'.toColor(),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Image.asset(
                  'assets/Vector1.png',
                  color: Colors.green,
                  scale: 1.2,
                ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Image.asset('assets/Vector2.png',
                    color: Colors.green, scale: 1),
              ),
              Positioned(
                // bottom: 5,
                // left: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/bank.png', scale: 1.5),
                      SizedBox(height: 20),
                      Text(
                        'Balance :',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'IDR' + ' ' + selectedNominal.toString() + ',-',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'My Point:',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '10 Point',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Card Holder:',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Akhdan Habibie',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Card ID',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'PngkrGndt',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(height: 30),
            Text(
              'Amount',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 15,
                color: '323232'.toColor(),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: 'F4F4F4'.toColor(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'IDR' + ' ' + selectedNominal.toString() + ',-',
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: '585858'.toColor()),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            //   // height: 40,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //     color: 'F4F4F4'.toColor(),
            //     borderRadius: BorderRadius.circular(5),
            //   ),
            //   child: Text(
            //     'IDR 0,-',
            //     style: GoogleFonts.poppins().copyWith(
            //       fontWeight: FontWeight.w100,
            //       fontSize: 15,
            //       color: '585858'.toColor(),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20),
            Text(
              'Select Refill Nominal',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 15,
                color: '323232'.toColor(),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      button(
                          select: select[0],
                          isActiv: (selectedNominal == select[0].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                      button(
                          select: select[1],
                          isActiv: (selectedNominal == select[1].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                      button(
                          select: select[2],
                          isActiv: (selectedNominal == select[2].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      button(
                          select: select[3],
                          isActiv: (selectedNominal == select[3].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                      button(
                          select: select[4],
                          isActiv: (selectedNominal == select[4].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                      button(
                          select: select[5],
                          isActiv: (selectedNominal == select[5].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      button(
                          select: select[6],
                          isActiv: (selectedNominal == select[6].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                      button(
                          select: select[7],
                          isActiv: (selectedNominal == select[7].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                      button(
                          select: select[8],
                          isActiv: (selectedNominal == select[8].nominal)
                              ? true
                              : false,
                          onSelected: (value) {
                            setState(() {
                              selectedNominal = value;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // height: 50,
        padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: '4DA934'.toColor(),
          ),
          onPressed: () {
            Get.back();
          },
          child: Text(
            'Top Up My Wallet',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
