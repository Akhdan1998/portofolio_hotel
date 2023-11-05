class Bandung {
  String? namaHotel;
  String? daerahHotel;
  String? image;
  int? harga;

  Bandung({this.namaHotel, this.daerahHotel, this.image, this.harga});
}

List<Bandung> allBandung = [
  Bandung(
    namaHotel: 'Grand Sovia',
    daerahHotel: 'Pasirkaliki, Bandung',
    image: 'assets/kamar.png',
    harga: 346800,
  ),
  Bandung(
    namaHotel: 'Grand Viveana',
    daerahHotel: 'Ciumbuleuit, Bandung',
    image: 'assets/marcopolo.png',
    harga: 327038,
  ),
  Bandung(
    namaHotel: 'Maize Center Hotel',
    daerahHotel: 'Sumur, Bandung',
    image: 'assets/verticalhotel2.png',
    harga: 262676,
  ),
];