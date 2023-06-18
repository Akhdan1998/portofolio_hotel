import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:clipboard/clipboard.dart';
class kupon extends StatefulWidget {
  @override
  State<kupon> createState() => _kuponState();
}

class _kuponState extends State<kupon> {
  String kodecashback = "TIX1998";
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
            'My Coupon',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: '4DA934'.toColor(),
            child: Container(
              padding: EdgeInsets.only(top: 12, bottom: 12, left: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: Text(
                'View your Coupon',
                style: GoogleFonts.poppins().copyWith(
                  color: '323232'.toColor(),
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              Fluttertoast.showToast(
                  msg: "Cashback Code Copied Successfully",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: '4DA934'.toColor(),
                  textColor: Colors.white,
                  fontSize: 16);
              await FlutterClipboard.copy(kodecashback);
            },
            child: Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        color: '4DA934'.toColor(),
                      ),
                      padding: EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Text(
                            'CASH',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'BACK',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 151,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Voucher Cashback 10%',
                                  style: GoogleFonts.poppins().copyWith(
                                    color: '5C5C5C'.toColor(),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Copy',
                                      style: GoogleFonts.poppins().copyWith(
                                        color: '6C6C6C'.toColor(),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.copy,
                                      color: '6C6C6C'.toColor(),
                                      size: 13,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Berlaku hingga 31-08-2020',
                            style: GoogleFonts.poppins().copyWith(
                              color: '6C6C6C'.toColor(),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: 'C2FEC8'.toColor(),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Kode Kupon: TIX9381',
                              style: GoogleFonts.poppins().copyWith(
                                color: '4DA934'.toColor(),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              Fluttertoast.showToast(
                  msg: "Discount Code Copied Successfully",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: '4DA934'.toColor(),
                  textColor: Colors.white,
                  fontSize: 16);
              await FlutterClipboard.copy(kodecashback);
            },
            child: Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        color: '4DA934'.toColor(),
                      ),
                      padding: EdgeInsets.only(left: 7, right: 7, top: 24, bottom: 24),
                      child: Column(
                        children: [
                          Text(
                            'GET A',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'DISCOUNT',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 152,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Voucher Discount 5%',
                                  style: GoogleFonts.poppins().copyWith(
                                    color: '5C5C5C'.toColor(),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Copy',
                                      style: GoogleFonts.poppins().copyWith(
                                        color: '6C6C6C'.toColor(),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.copy,
                                      color: '6C6C6C'.toColor(),
                                      size: 13,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Berlaku hingga 31-08-2020',
                            style: GoogleFonts.poppins().copyWith(
                              color: '6C6C6C'.toColor(),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: 'C2FEC8'.toColor(),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Kode Kupon: TIX9381',
                              style: GoogleFonts.poppins().copyWith(
                                color: '4DA934'.toColor(),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              Fluttertoast.showToast(
                  msg: "Free Shipping Code Copied Successfully",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: '4DA934'.toColor(),
                  textColor: Colors.white,
                  fontSize: 16);
              await FlutterClipboard.copy(kodecashback);
            },
            child: Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        color: '4DA934'.toColor(),
                      ),
                      padding: EdgeInsets.only(left: 11.5, right: 11.5, top: 24, bottom: 24),
                      child: Column(
                        children: [
                          Text(
                            'FREE',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'POSTAGE',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 152,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Free Shipping Vouchers',
                                  style: GoogleFonts.poppins().copyWith(
                                    color: '5C5C5C'.toColor(),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Copy',
                                      style: GoogleFonts.poppins().copyWith(
                                        color: '6C6C6C'.toColor(),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.copy,
                                      color: '6C6C6C'.toColor(),
                                      size: 13,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Berlaku hingga 31-08-2020',
                            style: GoogleFonts.poppins().copyWith(
                              color: '6C6C6C'.toColor(),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: 'C2FEC8'.toColor(),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Kode Kupon: TIX9381',
                              style: GoogleFonts.poppins().copyWith(
                                color: '4DA934'.toColor(),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
