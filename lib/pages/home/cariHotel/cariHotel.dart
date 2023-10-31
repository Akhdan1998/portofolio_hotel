import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio_hotel/pages/home/cariHotel/solo.dart';
import 'package:portofolio_hotel/pages/home/cariHotel/yogya.dart';
import 'package:supercharged/supercharged.dart';

import '../../../model/hotelKota.dart';
import '../cariKota.dart';
import 'bandung.dart';
import 'bogor.dart';
import 'jakarta.dart';

class carihotel extends StatefulWidget {
  const carihotel({Key? key}) : super(key: key);

  @override
  State<carihotel> createState() => _carihotelState();
}

class _carihotelState extends State<carihotel> {
  final carihotellokasiEditingController = TextEditingController();
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2022, 11, 5),
    end: DateTime(2022, 12, 24),
  );

  String selectedKota = '1';
  List<SelectedKota> select = [
    SelectedKota(
      id: '1',
      kota: 'Jakarta',
    ),
    SelectedKota(
      id: '2',
      kota: 'Bogor',
    ),
    SelectedKota(
      id: '3',
      kota: 'Bandung',
    ),
    SelectedKota(
      id: '4',
      kota: 'Solo',
    ),
    SelectedKota(
      id: '5',
      kota: 'Yogyakarta',
    ),
  ];
  bool history1 = true;
  bool history2 = true;
  int _selectedIndex = 0;
  PageController controller = PageController();
  void _navigasiBottomBar(int index) {
    setState(() {
      _selectedIndex = index;

      controller.animateToPage(_selectedIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOutCirc);
    });
  }

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 300,
                    child: Image.asset(
                      'assets/destination.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 42,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_back,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 20,
                    child: Text(
                      'Cari Hotel',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            offset: const Offset(1, 1),
                            color: Colors.black26,
                          ),
                          BoxShadow(
                            blurRadius: 50,
                            offset: const Offset(-1, 1),
                            color: Colors.black26,
                          ),
                          BoxShadow(
                            blurRadius: 50,
                            offset: const Offset(1, -1),
                            color: Colors.black26,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18),
                            topLeft: Radius.circular(18)),
                      ),
                      padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            child: TextFormField(
                              controller: carihotellokasiEditingController,
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.only(left: 10, bottom: 18),
                                hintText: 'Cari Hotel berdasarkan lokasi',
                                hintStyle: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: 'C4C4C4'.toColor()),
                                fillColor: 'F5F5F5'.toColor(),
                                filled: true,
                                prefixIcon: Icon(Icons.search_outlined,
                                    color: 'C4C4C4'.toColor(), size: 17),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: BoxDecoration(
                              color: 'F5F5F5'.toColor(),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.only(
                                left: 16, top: 9, right: 16, bottom: 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 12,
                                      color: 'C4C4C4'.toColor(),
                                    ),
                                    SizedBox(width: 10),
                                    GestureDetector(
                                      onTap: pickDateRange,
                                      child: Text(
                                        '${start.day} ${start.month}',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C4C4C4'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '-',
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: 'C4C4C4'.toColor()),
                                    ),
                                    SizedBox(width: 3),
                                    GestureDetector(
                                      onTap: pickDateRange,
                                      child: Text(
                                        '${end.day} ${end.month} ${end.year}',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C4C4C4'.toColor()),
                                      ),
                                    ),
                                    // SizedBox(width: 29),
                                  ],
                                ),
                                Text(
                                  '|',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: 'C4C4C4'.toColor()),
                                ),
                                // SizedBox(width: 22),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.people,
                                          size: 12,
                                          color: 'C4C4C4'.toColor(),
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        '1 Kamar, 1 Tamu',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C4C4C4'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(left: 15, right: 16),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: '4DA934'.toColor(),
                    ),
                    child: Text(
                          'Ayo Cari',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              (history2 != false) ? Container(
                padding: EdgeInsets.only(top: 12, bottom: 18),
                width: MediaQuery.of(context).size.width,
                // height: 108,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Pencarian Terakhir',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: SingleChildScrollView(
                        clipBehavior: Clip.hardEdge,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            (history1 != false) ? Container(
                              padding: EdgeInsets.only(
                                  left: 10, top: 5, right: 5, bottom: 11),
                              width: 240,
                              // height: 55,
                              decoration: BoxDecoration(
                                border:
                                Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        history1 = false;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                          BorderRadius.circular(50),
                                        ),
                                        child: Icon(Icons.close_outlined,
                                            color: Colors.white, size: 7),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Marcopolo Hotel Resort and Spa',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '12 Sep - 13 Sep 22 | 1 Kamar | 1 Tamu',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                          color: '7C7C7C'.toColor()),
                                    ),
                                  ),
                                ],
                              ),
                            ) : Container(),
                            (history1 != false) ? SizedBox(width: 10) : Container(),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, top: 5, right: 5, bottom: 11),
                              width: 240,
                              // height: 55,
                              decoration: BoxDecoration(
                                border:
                                Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        history2 = false;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                          BorderRadius.circular(50),
                                        ),
                                        child: Icon(Icons.close_outlined,
                                            color: Colors.white, size: 7),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Marcopolo Hotel Resort and Spa',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '12 Sep - 13 Sep 22 | 1 Kamar | 1 Tamu',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                          color: '7C7C7C'.toColor()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ) : Container(),
              Container(
                padding: EdgeInsets.only(left: 17),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended Hotel',
                  style: GoogleFonts.montserrat().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: 3),
              Container(
                padding: EdgeInsets.only(left: 17),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Stay here and make your holiday even more exciting!',
                  style: GoogleFonts.montserrat().copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: '747474'.toColor()),
                ),
              ),
              SizedBox(height: 13),
              SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedKota = '1';
                          _navigasiBottomBar(0);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: (selectedKota == '1')
                              ? '8FFF67'.toColor()
                              : Colors.white,
                          border: Border.all(
                              width: 1,
                              color: (selectedKota == '1')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Jakarta',
                          style: GoogleFonts.montserrat().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: (selectedKota == '1')
                                ? '4DA934'.toColor()
                                : Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedKota = '2';
                          _navigasiBottomBar(1);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: (selectedKota == '2')
                              ? '8FFF67'.toColor()
                              : Colors.white,
                          border: Border.all(
                              width: 1,
                              color: (selectedKota == '2')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Bogor',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: (selectedKota == '2')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedKota = '3';
                          _navigasiBottomBar(2);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: (selectedKota == '3')
                              ? '8FFF67'.toColor()
                              : Colors.white,
                          border: Border.all(
                              width: 1,
                              color: (selectedKota == '3')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Bandung',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: (selectedKota == '3')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedKota = '4';
                          _navigasiBottomBar(3);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: (selectedKota == '4')
                              ? '8FFF67'.toColor()
                              : Colors.white,
                          border: Border.all(
                              width: 1,
                              color: (selectedKota == '4')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Solo',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: (selectedKota == '4')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedKota = '5';
                          _navigasiBottomBar(4);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: (selectedKota == '5')
                              ? '8FFF67'.toColor()
                              : Colors.white,
                          border: Border.all(
                              width: 1,
                              color: (selectedKota == '5')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Yogyakarta',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: (selectedKota == '5')
                                  ? '4DA934'.toColor()
                                  : Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 19),
              Container(
                color: Colors.white,
                height: 127,
                // width: MediaQuery.of(context).size.width - 200,
                child: PageView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    jakarta(),
                    bogor(),
                    bandung(),
                    solo(),
                    yogyakarta(),
                  ],
                ),
              ),
              // SingleChildScrollView(
              //   clipBehavior: Clip.hardEdge,
              //   physics: BouncingScrollPhysics(),
              //   scrollDirection: Axis.horizontal,
              //   child: SizedBox(
              //     // color: Colors.red,
              //     height: 126,
              //     child: Row(
              //       children: [
              //         SizedBox(width: 17),
              //         verticalhotel1(),
              //         SizedBox(width: 15),
              //         verticalhotel2(),
              //         SizedBox(width: 15),
              //         verticalhotel3(),
              //         SizedBox(width: 15),
              //         verticalhotel1(),
              //         SizedBox(width: 17),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}
