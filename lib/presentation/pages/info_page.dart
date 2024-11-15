import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class InfoPage extends StatelessWidget {
  final HomeController controller;

  InfoPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.blue[50]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Center(
                child: Text(
                  'COVID-19 Information',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                    shadows: [
                      Shadow(
                        color: Colors.blue[100]!,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // COVID-19 Overview Section
              _buildSectionCard(
                'Apa itu COVID-19?',
                'COVID-19 adalah penyakit pernapasan yang disebabkan oleh virus SARS-CoV-2. Penyakit ini terutama menyebar melalui tetesan pernapasan ketika orang yang terinfeksi batuk, bersin, atau berbicara. Gejalanya dapat berkisar dari ringan hingga berat, dan beberapa orang mungkin tidak menunjukkan gejala apa pun.',
              ),
              SizedBox(height: 20),

              // Prevention Tips Section
              _buildSectionCard(
                'Cara Mencegah COVID-19:',
                '1. Cuci Tangan Secara Teratur:Gunakan sabun dan air mengalir untuk mencuci tangan selama minimal 20 detik, terutama setelah beraktivitas di luar rumah\n'
                '2. Gunakan Masker: Selalu kenakan masker di tempat umum atau di keramaian, terutama jika Anda berada di daerah dengan tingkat penularan yang tinggi\n'
                '3. Jaga Jarak Fisik: Usahakan untuk tetap menjaga jarak minimal 1 meter dari orang lain, terutama jika mereka tidak mengenakan masker\n'
                '4. Hindari Kerumunan: Sebisa mungkin hindari tempat-tempat yang ramai atau berkumpul dengan banyak orang untuk mengurangi risiko penularan\n'
                '5. Vaksinasi: Pastikan Anda telah menerima vaksin COVID-19 lengkap sesuai dengan pedoman yang berlaku di negara Anda untuk memperkuat perlindungan tubuh\n'
                '6. Desinfeksi Permukaan yang Sering Disentuh: Rutin membersihkan dan mendisinfeksi permukaan yang sering disentuh seperti gagang pintu, meja, dan telepon\n'
                '7. Perhatikan Gejala COVID-19: Segera periksakan diri ke fasilitas kesehatan jika Anda merasa menunjukkan gejala seperti demam, batuk, atau sesak napas\n'
                '8. Tingkatkan Imunitas: Konsumsi makanan sehat yang kaya vitamin dan mineral, cukup tidur, dan rutin berolahraga untuk menjaga daya tahan tubuh\n'
                '9. Isolasi Diri Jika Terpapar atau Sakit: Jika Anda merasa telah terpapar atau menunjukkan gejala, segera isolasi diri di rumah untuk mencegah penyebaran virus\n'
                '10. Tetap Update dengan Informasi Resmi: Ikuti berita dan informasi terbaru dari sumber yang dapat dipercaya, seperti Kementerian Kesehatan atau WHO\n',
              ),
              SizedBox(height: 20),

              // Vaccine Information Section
              _buildSectionCard(
                'Vaksinasi COVID-19',
                'Vaksinasi adalah salah satu cara paling efektif untuk mencegah penyakit parah yang disebabkan oleh COVID-19. Pastikan untuk mendapatkan vaksinasi dan ikuti pedoman otoritas kesehatan setempat untuk jadwal vaksinasi.',
              ),
              SizedBox(height: 20),

              // Helpful Links Section
              _buildSectionCard(
                'Helpful Resources',
                '1. [World Health Organization (WHO)](https://www.who.int)\n'
                '2. [Centers for Disease Control and Prevention (CDC)](https://www.cdc.gov)\n'
                '3. [Local Health Department](https://www.localhealth.gov)\n',
              ),
            ],
          ),
        ),
      ),
      selectedIndex: 1, // Info tab selected
      controller: controller,
    );
  }

  // Helper method to create stylized cards for each section
  Widget _buildSectionCard(String title, String content) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.blue[50]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
