class Kota {
  String? city;
  late final List<Daerah> daerah;

  Kota({this.city, required this.daerah});
}

class Daerah {
  String? kelurahan;
  String? subKota;
  String? hotel;
  int? harga;

  Daerah({this.kelurahan, this.subKota, this.hotel, this.harga});
}