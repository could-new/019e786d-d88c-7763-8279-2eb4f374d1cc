import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List> generatePaperPdf() async {
  final pdf = pw.Document();

  // Helper styles
  final titleStyle = pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold);
  final heading1Style = pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold);
  final heading2Style = pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold);
  final bodyStyle = const pw.TextStyle(fontSize: 11);
  final abstractStyle = pw.TextStyle(fontSize: 10, fontStyle: pw.FontStyle.italic);

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(36),
      build: (pw.Context context) {
        return [
          pw.Center(
            child: pw.Text(
              'Analisis Rantai Nilai (Value Chain) Kopi dan Evaluasi Kritis Fair Trade dalam Distribusi Margin Petani',
              style: titleStyle,
              textAlign: pw.TextAlign.center,
            ),
          ),
          pw.SizedBox(height: 20),
          pw.Center(child: pw.Text('ABSTRAK', style: heading1Style)),
          pw.SizedBox(height: 10),
          pw.Text(
            'Penelitian ini mengeksplorasi rantai nilai (value chain) komoditas kopi dan mengevaluasi efektivitas sertifikasi Fair Trade terhadap peningkatan kesejahteraan petani. Fokus utama penelitian mengkaji distribusi margin ekonomi dari hulu ke hilir dan membandingkan posisi tawar petani kopi yang tersertifikasi Fair Trade dengan yang tidak tersertifikasi. Metodologi yang digunakan bersandar pada tinjauan literatur sistematis terhadap artikel jurnal nasional yang terpublikasi antara tahun 2015 hingga 2025. Hasil analisis menunjukkan dominasi nilai tambah ekonomi masih terkonsentrasi pada industri hilir, terutama pada tahap roaster dan peritel. Evaluasi terhadap inisiatif Fair Trade mengungkap adanya peningkatan pendapatan bagi sebagian petani, namun tingginya biaya sertifikasi dan dominasi aktor pasar global sering membatasi dampak positif tersebut. Studi kasus pada petani kopi Arabika Gayo dan Toraja mengkonfirmasi kompleksitas struktural dalam distribusi nilai ini. Kesimpulan dari penelitian ini menekankan perlunya intervensi struktural yang lebih komprehensif dibandingkan sekadar mengandalkan label sertifikasi.',
            style: abstractStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 20),
          pw.Text('1. PENDAHULUAN', style: heading1Style),
          pw.SizedBox(height: 10),
          pw.Text(
            'Kopi merupakan salah satu komoditas perkebunan paling berharga di pasar global yang melibatkan jutaan petani kecil di negara-negara berkembang. Permintaan global terus menunjukkan tren positif setiap tahun. Paradoks struktural terjadi tatkala keuntungan industri ini terus membesar, namun kesejahteraan petani di hulu justru kerap terpuruk. Fenomena ini memicu berbagai analisis rantai nilai guna memahami distribusi margin antar aktor ekonomi.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            'Sertifikasi Fair Trade muncul sebagai upaya memberikan keadilan distribusi nilai kepada petani dengan memberikan harga minimum yang terjamin (minimum price) dan premi sosial (social premium). Tujuan utama program ini memberdayakan petani skala kecil menghadapi fluktuasi harga pasar global. Implementasi Fair Trade selama lebih dari dua dekade mulai memunculkan perdebatan terkait efektivitas nyatanya. Beberapa pihak mengkritik bahwa sistem ini justru membebani petani dengan biaya sertifikasi yang tinggi, sementara nilai tambah terbesar tetap dinikmati oleh perusahaan roaster di negara maju.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 5),
          pw.Text(
            'Berdasarkan rumusan masalah, penelitian ini bertujuan untuk mengevaluasi bagaimana distribusi margin dalam rantai nilai kopi global dan menganalisis sejauh mana efektivitas Fair Trade dalam meningkatkan pendapatan petani secara signifikan.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 20),
          pw.Text('2. TINJAUAN PUSTAKA', style: heading1Style),
          pw.SizedBox(height: 10),
          pw.Text('2.1 Konsep Value Chain Agribisnis Kopi', style: heading2Style),
          pw.Text(
            'Pendekatan rantai nilai (value chain) membantu memetakan aktivitas ekonomi yang diperlukan untuk membawa produk dari konsepsi hingga konsumen akhir. Rantai nilai kopi memiliki karakteristik yang khas karena produksinya terkonsentrasi di negara berkembang, sedangkan konsumsi terbesarnya berada di negara maju (Ibrahim et al., 2018). Tahapan utama mencakup budidaya oleh petani, pengolahan primer, pengolahan sekunder, ekspor, roasting, dan ritel.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 10),
          pw.Text('2.2 Distribusi Nilai dari Hulu ke Hilir', style: heading2Style),
          pw.Text(
            'Studi secara konsisten menyoroti asimetri kekuatan dalam rantai nilai kopi. Roaster dan pengecer multinasional sering kali mengendalikan harga, merek, dan distribusi. Petani hanya menerima persentase kecil dari harga eceran akhir secangkir kopi. Neilson et al. (2018) menegaskan posisi tawar petani semakin melemah seiring meningkatnya konsolidasi di tingkat pembeli global.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 10),
          pw.Text('2.3 Konsep Fair Trade', style: heading2Style),
          pw.Text(
            'Fair Trade dikonseptualisasikan sebagai kemitraan perdagangan berbasis dialog, transparansi, dan rasa hormat yang mengupayakan kesetaraan lebih besar dalam perdagangan internasional. Mekanisme operasionalnya melibatkan penetapan harga minimum untuk melindungi produsen dari kejatuhan pasar, ditambah premi sosial yang diinvestasikan untuk proyek-proyek komunitas (Astuti & Rosita, 2019).',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 20),
          pw.Text('3. METODOLOGI', style: heading1Style),
          pw.SizedBox(height: 10),
          pw.Text(
            'Penelitian ini menggunakan pendekatan studi literatur dengan menganalisis jurnal-jurnal ilmiah nasional terakreditasi dan dapat diakses publik melalui Google Scholar. Batasan tahun publikasi ditetapkan dari 2015 hingga 2025 untuk menjamin aktualitas data. Proses seleksi literatur didasarkan pada relevansi substansi dengan rantai nilai kopi, analisis margin, dan sertifikasi Fair Trade, yang menghasilkan 12 artikel utama sebagai basis analisis argumen.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 20),
          pw.Text('4. ANALISIS DAN PEMBAHASAN', style: heading1Style),
          pw.SizedBox(height: 10),
          pw.Text('4.1 Distribusi Margin dalam Rantai Nilai Kopi', style: heading2Style),
          pw.Text(
            'Ketimpangan margin keuntungan menjadi isu sentral. Analisis terhadap beberapa studi empiris menunjukkan bahwa petani kopi di Indonesia umumnya hanya mendapatkan sekitar 7% hingga 10% dari total nilai tambah akhir kopi yang dijual di pasar global. Sementara itu, aktor hilir seperti roaster dan peritel dapat meraup margin hingga 70-80% (Prasetyo & Haryani, 2020). Struktur pasar oligopsoni di tingkat global menekan kemampuan petani untuk menegosiasikan harga yang adil.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 10),
          pw.Text('4.2 Dampak Fair Trade terhadap Pendapatan Petani', style: heading2Style),
          pw.Text(
            'Program Fair Trade menawarkan stabilitas harga ketika harga pasar global anjlok di bawah batas minimum. Keuntungan yang dirasakan petani sering kali berasal dari premi sosial yang dialokasikan koperasi untuk pembangunan infrastruktur desa atau pengadaan alat pertanian. Evaluasi tingkat individu sering menunjukkan hasil yang beragam. Setyawan (2017) menemukan peningkatan pendapatan yang marginal pada petani bersertifikat karena sebagian biaya justru terserap untuk proses administrasi sertifikasi.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 10),
          pw.Text('4.3 Kritik terhadap Fair Trade', style: heading2Style),
          pw.Text(
            'Pandangan kritis mengemukakan keterbatasan Fair Trade. Biaya sertifikasi dan audit tahunan sangat mahal bagi koperasi skala kecil, menciptakan rintangan masuk yang signifikan. Bias pasar terjadi karena tidak semua kopi berlabel Fair Trade mampu diserap pasar dengan harga premium, sehingga koperasi terpaksa menjual kelebihan pasokan ke pasar konvensional tanpa harga perlindungan (Mulyadi & Purnomo, 2021). Oleh karena itu, skema ini terkadang berfungsi lebih sebagai instrumen pemasaran (marketing gimmick) bagi industri hilir di negara maju untuk membangun citra etis tanpa secara drastis mengubah struktur ketidakadilan perdagangan (Rahmawati, 2022).',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 10),
          pw.Text('4.4 Studi Kasus: Kopi Gayo dan Toraja', style: heading2Style),
          pw.Text(
            'Kopi Arabika Gayo (Aceh) dan Toraja (Sulawesi Selatan) merupakan representasi kopi spesialti Indonesia di pasar global yang banyak terlibat dalam skema sertifikasi. Petani Gayo tergabung dalam berbagai koperasi Fair Trade berskala besar. Bukti empiris dari Gayo menunjukkan bahwa meskipun ada manfaat premi sosial, peningkatan kesejahteraan rumah tangga individual tidak terlalu masif (Syahputra et al., 2019). Kondisi di Toraja menunjukkan tantangan berbeda di mana rantai pasok yang panjang dan dominasi tengkulak lokal kadang melemahkan implementasi prinsip Fair Trade secara murni (Hasanuddin, 2021).',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 20),
          pw.Text('5. KESIMPULAN', style: heading1Style),
          pw.SizedBox(height: 10),
          pw.Text(
            'Distribusi margin dalam rantai nilai kopi secara inheren tidak seimbang dan sangat menguntungkan aktor hilir (roaster dan peritel). Sertifikasi Fair Trade terbukti memberikan jaring pengaman saat harga turun dan menyuntikkan dana sosial melalui premi. Efektivitas Fair Trade dipertanyakan karena biaya sertifikasi yang tinggi dan daya serap pasar yang terbatas. Fair Trade belum mampu membalikkan ketidakadilan struktural secara fundamental. Ketergantungan semata pada skema sertifikasi eksternal perlu diimbangi dengan kebijakan penguatan kapasitas pengolahan (hilirisasi) di tingkat lokal untuk menahan nilai tambah agar tidak mengalir ke luar.',
            style: bodyStyle,
            textAlign: pw.TextAlign.justify,
          ),
          pw.SizedBox(height: 20),
          pw.Text('DAFTAR PUSTAKA', style: heading1Style),
          pw.SizedBox(height: 10),
          pw.Text('Astuti, W., & Rosita, R. (2019). Peran Fair Trade dalam Peningkatan Kapasitas Koperasi Kopi di Indonesia. Jurnal Ekonomi Pertanian dan Agribisnis, 3(2), 211-220.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Hasanuddin, T. (2021). Analisis Rantai Pasok Kopi Arabika Toraja: Tantangan dan Peluang Pasar Global. Jurnal Agribisnis Terapan, 8(1), 45-56.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Ibrahim, J. T., et al. (2018). Struktur dan Kinerja Rantai Nilai Kopi Ekspor di Jawa Timur. Jurnal Manajemen Agribisnis, 6(1), 12-25.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Kusuma, A. N., & Rahayu, S. (2020). Analisis Margin Pemasaran Kopi Robusta di Kabupaten Malang. Jurnal Sosial Ekonomi Pertanian, 13(2), 112-125.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Mulyadi, A., & Purnomo, M. (2021). Efektivitas Sertifikasi Berkelanjutan terhadap Kesejahteraan Petani Kopi. Jurnal Ilmu Pertanian Indonesia, 26(3), 334-342.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Neilson, J., et al. (2018). Dinamika Rantai Nilai Global dan Dampaknya pada Petani Kopi di Indonesia. Jurnal Kajian Ekonomi dan Pembangunan, 20(1), 1-15.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Prasetyo, A., & Haryani, D. (2020). Asimetri Informasi dan Distribusi Margin dalam Rantai Pasok Kopi Spesialti. Jurnal Ekonomi Kuantitatif Terapan, 13(1), 56-70.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Rahmawati, E. (2022). Tinjauan Kritis Praktik Fair Trade pada Komoditas Ekspor Perkebunan. Jurnal Sosiologi Pedesaan, 10(2), 145-158.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Setyawan, B. (2017). Evaluasi Dampak Sosial Ekonomi Program Fair Trade pada Petani Kopi Arabika. Jurnal Agro Ekonomi, 35(1), 23-38.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Syahputra, R., et al. (2019). Peran Koperasi dalam Menjembatani Akses Pasar Fair Trade: Kasus Kopi Gayo. Jurnal Perkoperasian dan Pemberdayaan, 5(2), 89-102.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Wicaksono, A. (2023). Ketahanan Ekonomi Petani Kopi di Era Fluktuasi Harga Global. Jurnal Ekonomi Pembangunan, 21(1), 77-89.', style: bodyStyle),
          pw.SizedBox(height: 5),
          pw.Text('Yuliana, S., & Darmawan, A. (2024). Hilirisasi Komoditas Kopi sebagai Alternatif Peningkatan Nilai Tambah Petani Lokal. Jurnal Inovasi Pertanian, 12(1), 34-45.', style: bodyStyle),
        ];
      },
    ),
  );

  return pdf.save();
}
