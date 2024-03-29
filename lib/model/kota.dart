class Kota {
  String? city;
  String? subKota;
  String? hotel;
  String? image;
  int? harga;

  Kota({this.city, this.subKota, this.hotel, this.image, this.harga});
}

List<Kota> allKotas = [
  Kota(city: 'Banda Aceh', subKota: 'Aceh', hotel: 'Ayani Hotel', harga: 780000, image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Langsa', subKota: 'Langsa', hotel: 'Hanania House', harga: 530000, image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Sabang', subKota: 'Sukajaya', hotel: 'Freddies Santai Sumurtiga', harga: 340000, image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Subulussalam', subKota: 'Simpang Kiri', hotel: 'Hermes One Subulussalam', harga: 650000, image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Denpasar', subKota: 'Denpasar Selatan', hotel: 'Aleesha Villas', harga: 510000, image: 'assets/hotel 5.webp'),
  Kota(city: 'Pangkalpinang', subKota: 'Kabupaten Bangka Tengah', hotel: 'Hotel Santika Bangka', harga: 830000, image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Cilegon', subKota: 'Jombang', hotel: 'Swiss-Belexpress', harga: 630000, image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Serang', subKota: 'Sumurpecung', hotel: 'Le Dian Hotel & Cottages', harga: 230000, image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Tangerang Selatan', subKota: 'Serpong Utara', hotel: 'Marilyn Hotel Serpong', harga: 330000, image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Bengkulu', subKota: 'Ratu Samban', hotel: 'Grage Hotel Bengkulu', harga: 930000, image: 'assets/hotel 5.webp'),
  Kota(city: 'Yogyakarta', subKota: 'Mergangsan', hotel: 'Adhisthana Hotel', harga: 423500, image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Gorontalo', subKota: 'Dungingi', hotel: 'ASTON Gorontalo Hotel & Villas', harga: 3888978, image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Jakarta Barat', subKota: 'Taman Sari', hotel: 'Novotel Jakarta Gajah Mada', harga: 804650, image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Jakarta Selatan', subKota: 'Pancoran', hotel: 'Gayatri Residence', harga: 130473, image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Jakarta Timur', subKota: 'Jatinegara', hotel: 'Fiducia Otista 153', harga: 144500, image: 'assets/hotel 5.webp'),
  Kota(city: 'Jakarta Utara', subKota: 'Tj. Priok', hotel: 'Coins Hotel Indonesia', harga: 277039, image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Jakarta Pusat', subKota: 'Tebet', hotel: 'HARRIS', harga: 952800, image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Sungai Penuh', subKota: 'Bungkal', hotel: 'Citra Alam 2', harga: 158952, image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Jambi', subKota: 'Ps. Jambi', hotel: 'Abadi Suite Hotel', harga: 418880, image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Bandung', subKota: 'Sukasari', hotel: 'Summer Hills Hotel & Villas', harga: 236770, image: 'assets/hotel 5.webp'),
  Kota(city: 'Bekasi', subKota: 'Tambun Selatan', hotel: 'Win Grand Hotel', harga: 356688, image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Bogor', subKota: 'Bogor Selatan', hotel: 'Padjadjaran Suite Resort', harga: 305558, image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Cimahi', subKota: 'Cimahi Selatan', hotel: 'Valore Hotel Cimahi', harga: 448000, image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Cirebon', subKota: 'Larangan', hotel: 'Lavilla Hotel', harga: 448340, image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Depok', subKota: 'Margonda', hotel: 'Margonda Residance', harga: 393810, image: 'assets/hotel 5.webp'),
  Kota(city: 'Sukabumi', subKota: 'Cikole', hotel: 'The Bountie Hotels', harga: 209871, image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Tasikmalaya', subKota: 'Cipedes', hotel: 'Fave Hotel', harga: 329871, image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Banjar', subKota: 'Parunglesang', hotel: 'Hotel Mandiri', harga: 324829, image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Magelang', subKota: 'Magersari', hotel: 'Trio Front One Resort', harga: 456722, image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Pekalongan', subKota: 'Poncol', hotel: 'Hotel Namira Syariah', harga: 245316, image: 'assets/hotel 5.webp'),
  Kota(city: 'Salatiga', subKota: 'Argomulyo', hotel: 'Hotel Laras Asri Resort', harga: 786490, image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Semarang', subKota: 'Bangunharjo', hotel: 'Hotel Quest', harga: 980765, image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Surakarta', subKota: 'Gentan', hotel: 'Ommaya Hotel & Resort', harga: 674309, image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Tegal', subKota: 'Pesurungan Kidul', hotel: 'Hotel Bahari Inn', harga: 547893, image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Blitar', image: 'assets/hotel 5.webp'),
  Kota(city: 'Kediri', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Madiun', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Malang', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Mojokerto', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Pasuruan', image: 'assets/hotel 5.webp'),
  Kota(city: 'Probolinggo', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Surabaya', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Pontianak', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Singkawang', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Banjarbaru', image: 'assets/hotel 5.webp'),
  Kota(city: 'Banjarmasin', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Palangka Raya', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Balikpapan', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Bontang', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Samarinda', image: 'assets/hotel 5.webp'),
  Kota(city: 'Nusantara', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Tarakan', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Batam', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Tanjungpinang', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Bandar Lampung', image: 'assets/hotel 5.webp'),
  Kota(city: 'Metro', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Tidore Kepulauan', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Ambon', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Tual', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Bima', image: 'assets/hotel 5.webp'),
  Kota(city: 'Mataram', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Kupang', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Sorong', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Jayapura', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Dumai', image: 'assets/hotel 5.webp'),
  Kota(city: 'Pekanbaru', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Makassar', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Palopo', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Parepare', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Palu', image: 'assets/hotel 5.webp'),
  Kota(city: 'Baubau', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Kendari', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Bitung', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Kotamobagu', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Manado', image: 'assets/hotel 5.webp'),
  Kota(city: 'Tomohon', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Bukittinggi', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Padang', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Padang Panjang', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Pariaman', image: 'assets/hotel 5.webp'),
  Kota(city: 'Payakumbuh', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Sawahlunto', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Solok', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Lubuklinggau', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Pagar Alam', image: 'assets/hotel 5.webp'),
  Kota(city: 'Palembang', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Prabumulih', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Binjai', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Gunungsitoli', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Medan', image: 'assets/hotel 5.webp'),
  Kota(city: 'Padangsidimpuan', image: 'assets/hotel 1.jpeg'),
  Kota(city: 'Pematangsiantar', image: 'assets/hotel 2.jpeg'),
  Kota(city: 'Sibolga', image: 'assets/hotel 3.jpeg'),
  Kota(city: 'Tanjungbalai', image: 'assets/hotel 4.jpeg'),
  Kota(city: 'Tebing Tinggi', image: 'assets/hotel 5.webp'),
];