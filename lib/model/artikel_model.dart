class Artikel {
  String? image;
  String? judul;
  String? deskripsi;
  String? nama;
  String? tanggal;
  String? lihat;

  Artikel({this.image, this.judul, this.deskripsi, this.nama, this.tanggal, this.lihat});
}

List<Artikel> allArtikel = [
  Artikel(
    image: 'assets/artik.png',
    judul: 'The Most Amazing Mountain in Japan',
    deskripsi:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo',
    nama: 'Yuvan Farid Aziz',
    tanggal: '2 Weeks ago',
    lihat: '1.543'
  ),
  Artikel(
    image: 'assets/artik2.png',
    judul: '3 Beauttiful Spot in The World',
    deskripsi:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo',
    nama: 'Akhdan Habibie',
    tanggal: '3 Weeks ago',
      lihat: '2.643'
  ),
  Artikel(
    image: 'assets/artik3.png',
    judul: 'Jakarta, Indonesia amazing city',
    deskripsi:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo',
    nama: 'Pendekar Gendut',
    tanggal: '4 Weeks ago',
      lihat: '543'
  ),
];
