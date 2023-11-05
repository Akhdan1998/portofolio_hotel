class Solo {
  String? namaHotel;
  String? daerahHotel;
  String? image;
  int? harga;

  Solo({this.namaHotel, this.daerahHotel, this.image, this.harga});
}

List<Solo> allSolo = [
  Solo(
    namaHotel: 'Lampion Hotel',
    daerahHotel: 'Solo, Jawa Tengah',
    image: 'assets/kamar.png',
    harga: 198875,
  ),
  Solo(
    namaHotel: 'Ommaya Hotel',
    daerahHotel: 'Solo Baru, Solo',
    image: 'assets/marcopolo.png',
    harga: 191600,
  ),
];