class Bogor {
  String? namaHotel;
  String? daerahHotel;
  String? image;
  int? harga;

  Bogor({this.namaHotel, this.daerahHotel, this.image, this.harga});
}

List<Bogor> allBogor = [
  Bogor(
    namaHotel: 'Hariss Hotel',
    daerahHotel: 'Sentul, Bogor',
    image: 'assets/marcopolo.png',
    harga: 987600,
  ),
  Bogor(
    namaHotel: 'Swiss-Belcourt Hotel',
    daerahHotel: 'Kalibata, Jakarta',
    image: 'assets/verticalhotel2.png',
    harga: 490000,
  ),
  Bogor(
    namaHotel: 'Villa Kayangan',
    daerahHotel: 'Cisarua, Bogor',
    image: 'assets/verticalhotel3.png',
    harga: 877600,
  ),
  Bogor(
    namaHotel: 'Whiz Prime Hotel',
    daerahHotel: 'Sudirman, Jakarta',
    image: 'assets/kamar.png',
    harga: 435000,
  ),
];