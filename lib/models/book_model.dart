class BookModel {
  int? id;
  String? image;
  String? title;
  String? years;
  String? desc;
  String? rate;
  String? create;

  BookModel(this.id, this.image, this.title, this.years, this.desc, this.rate,
      this.create);

  static List<BookModel> getBooks() => [
        BookModel(
            1,
            "assets/laskar.jpeg",
            "Laskar Pelangi",
            "2005",
            "Buku ini mengisahkan tentang perjuangan sekelompok anak-anak miskin di Belitung untuk mendapatkan pendidikan yang layak. Dengan bahasa yang indah, buku ini menggambarkan kekuatan semangat dan optimisme dalam menghadapi kesulitan hidup. Laskar Pelangi telah mendapatkan pengakuan internasional dan diadaptasi menjadi film yang sukses.",
            "4.5/5",
            "Andrea Hirata"),
        BookModel(
            2,
            "assets/ayat.jpeg",
            "Ayat-Ayat Cinta",
            "2004",
            "Novel ini mengisahkan tentang perjuangan seorang mahasiswa Indonesia bernama Fahri dalam menjalani kehidupan di kota Kairo, Mesir, serta kisah cintanya yang rumit dengan tiga wanita. Buku ini berhasil menggambarkan perbedaan budaya dan agama dengan indah, sambil menyampaikan pesan cinta yang universal.",
            "4/5",
            "Habiburrahman El-Shirazy"),
        BookModel(
            3,
            "assets/dilan.jpeg",
            "Dilan: 1990",
            "2014",
            "Novel ini mengisahkan tentang kisah cinta remaja antara Milea dan Dilan pada tahun 1990-an di Bandung. Buku ini memukau pembaca dengan bahasa yang romantis dan menghadirkan nostalgia era 90-an. Dilan menjadi fenomena di media sosial dan diadaptasi menjadi film yang sukses.",
            "4/5",
            "Habiburrahman El-Shirazy"),
        BookModel(
            4,
            "assets/perahu.jpeg",
            "Perahu Kertas",
            "2009",
            "Novel ini mengisahkan tentang perjalanan hidup seorang remaja bernama Kugy, yang terlibat dalam cinta segitiga dengan Keenan dan Remi. Buku ini menggambarkan tentang impian, pertemanan, dan pencarian identitas diri dalam suasana yang penuh warna. Perahu Kertas berhasil menarik perhatian pembaca muda di Indonesia.",
            "4/5",
            "Dee Lestari"),
        BookModel(
            5,
            "assets/ayah.jpeg",
            "Ayah",
            "2001",
            "Buku ini merupakan kumpulan cerpen karya Andrea Hirata yang mengangkat tema hubungan antara ayah dan anak. Melalui cerita-cerita pendek yang penuh emosi, buku ini menggambarkan berbagai sisi hubungan ayah-anak, dari kehilangan hingga kehangatan. Ayah telah meraih penghargaan dan menjadi salah satu karya terkenal Andrea Hirata.",
            "4/5",
            "Andrea Hirata"),
      ];
}
