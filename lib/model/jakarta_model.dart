class Jakarta {
  String? namaHotel;
  String? daerahHotel;
  String? image;
  int? harga;

  Jakarta({this.namaHotel, this.daerahHotel, this.image, this.harga});
}

List<Jakarta> allJakarta = [
  Jakarta(
    namaHotel: 'Marcopolo Hotel',
    daerahHotel: 'Menteng, Jakarta',
    image: 'assets/verticalhotel2.png',
    harga: 275000,
  ),
  Jakarta(
    namaHotel: 'Fave Hotel',
    daerahHotel: 'Kemang, Jakarta',
    image: 'assets/verticalhotel3.png',
    harga: 432000,
  ),
  Jakarta(
    namaHotel: 'Maxwell Hotel',
    daerahHotel: 'Mangga Dua, Jakarta',
    image: 'assets/kamar.png',
    harga: 349349,
  ),
  Jakarta(
    namaHotel: 'eL Hotel',
    daerahHotel: 'Kelapa Gading, Jakarta',
    image: 'assets/marcopolo.png',
    harga: 987600,
  ),
  Jakarta(
    namaHotel: 'Kalibata Appart',
    daerahHotel: 'Kalibata, Jakarta',
    image: 'assets/verticalhotel2.png',
    harga: 679000,
  ),
];