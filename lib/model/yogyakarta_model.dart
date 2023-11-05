class Yogyakarta {
  String? namaHotel;
  String? daerahHotel;
  String? image;
  int? harga;

  Yogyakarta({this.namaHotel, this.daerahHotel, this.image, this.harga});
}

List<Yogyakarta> allYogyakarta = [
  Yogyakarta(
    namaHotel: 'Chorus Boutique',
    daerahHotel: 'Depok, Yogyakarta',
    image: 'assets/kamar.png',
    harga: 205913,
  ),
];