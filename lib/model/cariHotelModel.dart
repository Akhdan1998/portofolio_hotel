class Hotel {
  String? namaHotel;
  String? daerahHotel;
  String? image;
  int? harga;

  Hotel({this.namaHotel, this.daerahHotel, this.image, this.harga});
}

 List<Hotel> allHotels = [
  Hotel(
    namaHotel: 'Marcopolo Hotel',
    daerahHotel: 'Menteng, Jakarta',
    image: 'assets/verticalhotel2.png',
    harga: 275000,
  ),
   Hotel(
     namaHotel: 'Fave',
     daerahHotel: 'Kemang, Jakarta',
     image: 'assets/verticalhotel3.png',
     harga: 432000,
   ),
   Hotel(
     namaHotel: 'Margonda Res',
     daerahHotel: 'Margonda, Depok',
     image: 'assets/kamar.png',
     harga: 563000,
   ),
   Hotel(
     namaHotel: 'Hariss',
     daerahHotel: 'Sentul, Bogor',
     image: 'assets/marcopolo.png',
     harga: 987600,
   ),
   Hotel(
     namaHotel: 'Kalibata Appart',
     daerahHotel: 'Kalibata, Jakarta',
     image: 'assets/verticalhotel2.png',
     harga: 679000,
   ),
   Hotel(
     namaHotel: 'Villa Kayangan',
     daerahHotel: 'Cisarua, Bogor',
     image: 'assets/verticalhotel3.png',
     harga: 877600,
   ),
   Hotel(
     namaHotel: 'Hotel Indonesia',
     daerahHotel: 'Sudirman, Jakarta',
     image: 'assets/kamar.png',
     harga: 566500,
   ),
   Hotel(
     namaHotel: 'Pacific Place',
     daerahHotel: 'SCBD, Jakarta',
     image: 'assets/marcopolo.png',
     harga: 1000000,
   ),
];