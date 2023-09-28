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
    Kota(city: 'Banda Aceh', daerah: [
      Daerah(
        kelurahan: 'Banda Aceh',
        subKota: 'Aceh',
        hotel: 'Ayani Hotel',
        harga: 780000,
      ),
    ]),

    Kota(city: 'Langsa', daerah: [
      Daerah(
        kelurahan: 'Langsa Kota',
        subKota: 'Langsa',
        hotel: 'Hanania House',
        harga: 530000,
      ),
    ]),
    Kota(city: 'Sabang', daerah: [
      Daerah(
        kelurahan: 'Sukajaya',
        subKota: 'Sabang',
        hotel: 'Freddies Santai Sumurtiga',
        harga: 340000,
      ),
    ]),
    Kota(city: 'Subulussalam', daerah: [
      Daerah(
        kelurahan: 'Simpang Kiri',
        subKota: 'Subulussalam',
        hotel: 'Hermes One Subulussalam',
        harga: 650000,
      ),
    ]),
    Kota(city: 'Denpasar', daerah: [
      Daerah(
        kelurahan: 'Denpasar Selatan',
        subKota: 'Denpasar',
        hotel: 'Aleesha Villas',
        harga: 510000,
      ),
    ]),
    Kota(city: 'Pangkalpinang', daerah: [
      Daerah(
        kelurahan: 'Kabupaten Bangka Tengah',
        subKota: 'Pangkalpinang',
        hotel: 'Hotel Santika Bangka',
        harga: 830000,
      ),
    ]),
    Kota(city: 'Cilegon', daerah: [
      Daerah(
        kelurahan: 'Jombang',
        subKota: 'Cilegon',
        hotel: 'Swiss-Belexpress',
        harga: 630000,
      ),
    ]),
    Kota(city: 'Serang', daerah: [
      Daerah(
        kelurahan: 'Sumurpecung',
        subKota: 'Serang',
        hotel: 'Le Dian Hotel & Cottages',
        harga: 230000,
      ),
    ]),
    Kota(city: 'Tangerang Selatan', daerah: [
      Daerah(
        kelurahan: 'Serpong Utara',
        subKota: 'Tangerang Selatan',
        hotel: 'Marilyn Hotel Serpong',
        harga: 330000,
      ),
    ]),
    Kota(city: 'Bengkulu', daerah: [
      Daerah(
        kelurahan: 'Ratu Samban',
        subKota: 'Bengkulu',
        hotel: 'Grage Hotel Bengkulu',
        harga: 930000,
      ),
    ]),
    Kota(city: 'Yogyakarta', daerah: [
      Daerah(
        kelurahan: 'Mergangsan',
        subKota: 'Yogyakarta',
        hotel: 'Adhisthana Hotel',
        harga: 423500,
      ),
    ]),
    Kota(city: 'Gorontalo', daerah: [
      Daerah(
        kelurahan: 'Dungingi',
        subKota: 'Gorontalo',
        hotel: 'ASTON Gorontalo Hotel & Villas',
        harga: 3888978,
      ),
    ]),
    Kota(city: 'Jakarta Barat', daerah: [
      Daerah(
        kelurahan: 'Taman Sari',
        subKota: 'Jakarta Barat',
        hotel: 'Novotel Jakarta Gajah Mada',
        harga: 804650,
      ),
    ]),
    Kota(city: 'Jakarta Selatan', daerah: [
      Daerah(
        kelurahan: 'Pancoran',
        subKota: 'Jakarta Selatan',
        hotel: 'Gayatri Residence',
        harga: 130473,
      ),
    ]),
    Kota(city: 'Jakarta Timur', daerah: [
      Daerah(
        kelurahan: 'Jatinegara',
        subKota: 'Jakarta Timur',
        hotel: 'Fiducia Otista 153',
        harga: 144500,
      ),
    ]),
    Kota(city: 'Jakarta Utara', daerah: [
      Daerah(
        kelurahan: 'Tj. Priok',
        subKota: 'Jakarta Utara',
        hotel: 'Coins Hotel Indonesia',
        harga: 277039,
      ),
    ]),
    Kota(city: 'Jakarta Pusat', daerah: [
      Daerah(
        kelurahan: 'Tebet',
        subKota: 'Jakarta Pusat',
        hotel: 'HARRIS',
        harga: 952800,
      ),
    ]),
    Kota(city: 'Sungai Penuh', daerah: [
      Daerah(
        kelurahan: 'Sungai Bungkal',
        subKota: 'Sungai Penuh',
        hotel: 'Citra Alam 2',
        harga: 158952,
      ),
    ]),
    Kota(city: 'Jambi', daerah: [
      Daerah(
        kelurahan: 'Ps. Jambi',
        subKota: 'Sungai Penuh',
        hotel: 'Abadi Suite Hotel',
        harga: 418880,
      ),
    ]),
    Kota(city: 'Bandung', daerah: [
      Daerah(
        kelurahan: 'Sukasari',
        subKota: 'Bandung',
        hotel: 'Summer Hills Hotel & Villas',
        harga: 236770,
      ),
    ]),
    Kota(city: 'Bekasi', daerah: [
      Daerah(
        kelurahan: 'Tambun Sel',
        subKota: 'Bekasi',
        hotel: 'Win Grand Hotel',
        harga: 356688,
      ),
    ]),
    Kota(city: 'Bogor', daerah: [
      Daerah(
        kelurahan: 'Bogor Sel',
        subKota: 'Bogor',
        hotel: 'Padjadjaran Suite Resort & Convention Hotel',
        harga: 305558,
      ),
    ]),
    Kota(city: 'Cimahi', daerah: [
      Daerah(
        kelurahan: 'Cimahi Sel',
        subKota: 'Cimahi',
        hotel: 'Valore Hotel Cimahi',
        harga: 448000,
      ),
    ]),
    Kota(city: 'Cirebon', daerah: [
      Daerah(
        kelurahan: 'Larangan',
        subKota: 'Cirebon',
        hotel: 'Lavilla Hotel',
        harga: 448340,
      ),
    ]),
    Kota(city: 'Depok', daerah: [
      Daerah(
        kelurahan: 'Beji',
        subKota: 'Depok',
        hotel: 'Lavilla Hotel',
        harga: 393810,
      ),
    ]),
    Kota(city: 'Sukabumi', daerah: [
      Daerah(
        kelurahan: 'Cikole',
        subKota: 'Sukabumi',
        hotel: 'The Bountie Hotels and Convention Center',
        harga: 209871,
      ),
    ]),
    Kota(city: 'Tasikmalaya', daerah: [
      Daerah(
        kelurahan: 'Cipedes',
        subKota: 'Tasikmalaya',
        hotel: 'Fave Hotel',
        harga: 329871,
      ),
    ]),
    Kota(city: 'Banjar', daerah: [
      Daerah(
        kelurahan: 'Parunglesang',
        subKota: 'Banjar',
        hotel: 'Hotel Mandiri',
        harga: 324829,
      ),
    ]),
    Kota(city: 'Magelang', daerah: [
      Daerah(
        kelurahan: 'Magersari',
        subKota: 'Magelang',
        hotel: 'Trio Front One Resort',
        harga: 456722,
      ),
    ]),
    Kota(city: 'Pekalongan', daerah: [
      Daerah(
        kelurahan: 'Poncol',
        subKota: 'Pekalongan',
        hotel: 'Hotel Namira Syariah',
        harga: 245316,
      ),
    ]),
    Kota(city: 'Salatiga', daerah: [
      Daerah(
        kelurahan: 'Argomulyo',
        subKota: 'Salatiga',
        hotel: 'Hotel Laras Asri Resort and Spa',
        harga: 786490,
      ),
    ]),
    Kota(city: 'Semarang', daerah: [
      Daerah(
        kelurahan: 'Bangunharjo',
        subKota: 'Semarang',
        hotel: 'Hotel Quest',
        harga: 980765,
      ),
    ]),
    Kota(city: 'Surakarta', daerah: [
      Daerah(
        kelurahan: 'Gentan',
        subKota: 'Surakarta',
        hotel: 'Ommaya Hotel & Resort',
        harga: 674309,
      ),
    ]),
    Kota(city: 'Tegal', daerah: [
      Daerah(
        kelurahan: 'Pesurungan Kidul',
        subKota: 'Tegal',
        hotel: 'Hotel Bahari Inn',
        harga: 547893,
      ),
    ]),
    // Kota(city: 'Batu'),
    // Kota(city: 'Blitar'),
    // Kota(city: 'Kediri'),
    // Kota(city: 'Madiun'),
    // Kota(city: 'Malang'),
    // Kota(city: 'Mojokerto'),
    // Kota(city: 'Pasuruan'),
    // Kota(city: 'Probolinggo'),
    // Kota(city: 'Surabaya'),
    // Kota(city: 'Pontianak'),
    // Kota(city: 'Singkawang'),
    // Kota(city: 'Banjarbaru'),
    // Kota(city: 'Banjarmasin'),
    // Kota(city: 'Palangka Raya'),
    // Kota(city: 'Balikpapan'),
    // Kota(city: 'Bontang'),
    // Kota(city: 'Samarinda'),
    // Kota(city: 'Nusantara'),
    // Kota(city: 'Tarakan'),
    // Kota(city: 'Batam'),
    // Kota(city: 'Tanjungpinang'),
    // Kota(city: 'Bandar Lampung'),
    // Kota(city: 'Metro'),
    // Kota(city: 'Tidore Kepulauan'),
    // Kota(city: 'Ambon'),
    // Kota(city: 'Tual'),
    // Kota(city: 'Bima'),
    // Kota(city: 'Mataram'),
    // Kota(city: 'Kupang'),
    // Kota(city: 'Sorong'),
    // Kota(city: 'Jayapura'),
    // Kota(city: 'Dumai'),
    // Kota(city: 'Pekanbaru'),
    // Kota(city: 'Makassar'),
    // Kota(city: 'Palopo'),
    // Kota(city: 'Parepare'),
    // Kota(city: 'Palu'),
    // Kota(city: 'Baubau'),
    // Kota(city: 'Kendari'),
    // Kota(city: 'Bitung'),
    // Kota(city: 'Kotamobagu'),
    // Kota(city: 'Manado'),
    // Kota(city: 'Tomohon'),
    // Kota(city: 'Bukittinggi'),
    // Kota(city: 'Padang'),
    // Kota(city: 'Padang Panjang'),
    // Kota(city: 'Pariaman'),
    // Kota(city: 'Payakumbuh'),
    // Kota(city: 'Sawahlunto'),
    // Kota(city: 'Solok'),
    // Kota(city: 'Lubuklinggau'),
    // Kota(city: 'Pagar Alam'),
    // Kota(city: 'Palembang'),
    // Kota(city: 'Prabumulih'),
    // Kota(city: 'Binjai'),
    // Kota(city: 'Gunungsitoli'),
    // Kota(city: 'Medan'),
    // Kota(city: 'Padangsidimpuan'),
    // Kota(city: 'Pematangsiantar'),
    // Kota(city: 'Sibolga'),
    // Kota(city: 'Tanjungbalai'),
    // Kota(city: 'Tebing Tinggi'),
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
