import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import '../../model/kota.dart';
import '../../widget/kamar.dart';

class cariKota extends StatefulWidget {
  @override
  State<cariKota> createState() => _cariKotaState();
}

class _cariKotaState extends State<cariKota> {
  List<Kota> kota = [
    Kota(city: 'Banda Aceh'),
    Kota(city: 'Langsa'),
    Kota(city: 'Lhokseumawe'),
    Kota(city: 'Sabang'),
    Kota(city: 'Subulussalam'),
    Kota(city: 'Denpasar'),
    Kota(city: 'Pangkalpinang'),
    Kota(city: 'Cilegon'),
    Kota(city: 'Serang'),
    Kota(city: 'Tangerang Selatan'),
    Kota(city: 'Tangerang'),
    Kota(city: 'Bengkulu'),
    Kota(city: 'Yogyakarta'),
    Kota(city: 'Gorontalo'),
    Kota(city: 'Jakarta Barat'),
    Kota(city: 'Jakarta Selatan'),
    Kota(city: 'Jakarta Timur'),
    Kota(city: 'Jakarta Utara'),
    Kota(city: 'Jakarta Pusat'),
    Kota(city: 'Sungai Penuh'),
    Kota(city: 'Jambi'),
    Kota(city: 'Bandung'),
    Kota(city: 'Bekasi'),
    Kota(city: 'Bogor'),
    Kota(city: 'Cimahi'),
    Kota(city: 'Cirebon'),
    Kota(city: 'Depok'),
    Kota(city: 'Sukabumi'),
    Kota(city: 'Tasikmalaya'),
    Kota(city: 'Banjar'),
    Kota(city: 'Magelang'),
    Kota(city: 'Pekalongan'),
    Kota(city: 'Salatiga'),
    Kota(city: 'Semarang'),
    Kota(city: 'Surakarta'),
    Kota(city: 'Tegal'),
    Kota(city: 'Batu'),
    Kota(city: 'Blitar'),
    Kota(city: 'Kediri'),
    Kota(city: 'Madiun'),
    Kota(city: 'Malang'),
    Kota(city: 'Mojokerto'),
    Kota(city: 'Pasuruan'),
    Kota(city: 'Probolinggo'),
    Kota(city: 'Surabaya'),
    Kota(city: 'Pontianak'),
    Kota(city: 'Singkawang'),
    Kota(city: 'Banjarbaru'),
    Kota(city: 'Banjarmasin'),
    Kota(city: 'Palangka Raya'),
    Kota(city: 'Balikpapan'),
    Kota(city: 'Bontang'),
    Kota(city: 'Samarinda'),
    Kota(city: 'Nusantara'),
    Kota(city: 'Tarakan'),
    Kota(city: 'Batam'),
    Kota(city: 'Tanjungpinang'),
    Kota(city: 'Bandar Lampung'),
    Kota(city: 'Metro'),
    Kota(city: 'Tidore Kepulauan'),
    Kota(city: 'Ambon'),
    Kota(city: 'Tual'),
    Kota(city: 'Bima'),
    Kota(city: 'Mataram'),
    Kota(city: 'Kupang'),
    Kota(city: 'Sorong'),
    Kota(city: 'Jayapura'),
    Kota(city: 'Dumai'),
    Kota(city: 'Pekanbaru'),
    Kota(city: 'Makassar'),
    Kota(city: 'Palopo'),
    Kota(city: 'Parepare'),
    Kota(city: 'Palu'),
    Kota(city: 'Baubau'),
    Kota(city: 'Kendari'),
    Kota(city: 'Bitung'),
    Kota(city: 'Kotamobagu'),
    Kota(city: 'Manado'),
    Kota(city: 'Tomohon'),
    Kota(city: 'Bukittinggi'),
    Kota(city: 'Padang'),
    Kota(city: 'Padang Panjang'),
    Kota(city: 'Pariaman'),
    Kota(city: 'Payakumbuh'),
    Kota(city: 'Sawahlunto'),
    Kota(city: 'Solok'),
    Kota(city: 'Lubuklinggau'),
    Kota(city: 'Pagar Alam'),
    Kota(city: 'Palembang'),
    Kota(city: 'Prabumulih'),
    Kota(city: 'Binjai'),
    Kota(city: 'Gunungsitoli'),
    Kota(city: 'Medan'),
    Kota(city: 'Padangsidimpuan'),
    Kota(city: 'Pematangsiantar'),
    Kota(city: 'Sibolga'),
    Kota(city: 'Tanjungbalai'),
    Kota(city: 'Tebing Tinggi'),
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
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          height: 40,
          child: TextField(
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: '4DA934'.toColor(),
              height: 25,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All Cities',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 13,
                        color: '4D4D4D'.toColor(),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: kota
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              Get.to(kamar());
                            },
                            child: Container(
                              height: 50,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        e.city ?? '',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 12,
                                          color: '4D4D4D'.toColor(),
                                        ),
                                      ),
                                      Icon(Icons.chevron_right),
                                    ],
                                  ),
                                  Divider(),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
