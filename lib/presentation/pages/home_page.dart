import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  void _showEmergencyOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.local_hospital, color: Colors.blue),
              title: Text('Temukan Rumah Sakit'),
              onTap: () {
                Navigator.pop(context);
                _showInfoDialog(context, 'Temukan Rumah Sakit',
                '1. Ciputra Hospital\n'
                '2. rumah sakit hermina\n'
                '3. Siloam hospital\n'
                '4. rumah sakit pondok indah');
              },
            ),
            ListTile(
              leading: Icon(Icons.vaccines, color: Colors.green),
              title: Text('Pusat Vaksinasi'),
              onTap: () {
                Navigator.pop(context);
                _showInfoDialog(context, 'Pusat Vaksinasi',
                'Berikut pusat vaksinasi di Tangerang:\n' 
                '1. Kelurahan Gondrong, Kecamatan Cipondoh\n'
                '2. Kelurahan Petir, Kecamatan Cipondoh\n'
                '3. PKM Karang Tengah, Kecamatan Karang Tengah\n'
                '4. GOR Jatiuwung, Kecamatan Jatiuwung\n'
                '5. SDN Pangunggangan 5, Kecamatan Pinang\n');
              },
            ),
            ListTile(
              leading: Icon(Icons.emergency, color: Colors.red),
              title: Text('Layanan Emergency'),
              onTap: () {
                Navigator.pop(context);
                _showInfoDialog(context, 'Layanan Emergency', 'masyarakat dapat mengakses layanan hotline darurat di nomor 119 ext 9 untuk mendapatkan informasi lebih lanjut atau bantuan terkait COVID-19');
              },
            ),
          ],
        );
      },
    );
  }

  void _showInfoDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  void _showHealthTipsInfo(BuildContext context) {
    _showInfoDialog(context, 'Health Tips',
    '1. Sering-seringlah mencuci tangan dengan sabun dan air.\n'
    '2. Kenakan masker di tempat ramai.\n'
    '3. Lakukan social distancing.\n'
    '4. Hindari menyentuh wajah, terutama mata, hidung, dan mulut.\n'
    '5. Bersihkan permukaan yang sering disentuh secara teratur.');
  }

  void _showCovidStatsInfo(BuildContext context) {
    _showInfoDialog(context, 'COVID-19 Stats', 'Hingga November 2024, jumlah kasus COVID-19 yang dikonfirmasi di seluruh dunia telah mencapai lebih dari 766 juta, dengan lebih dari 7 juta kematian yang tercatat​. Meskipun banyak negara mengalami penurunan kasus baru, beberapa wilayah masih melaporkan lonjakan kasus secara berkala. Angka kematian dan kasus baru sangat.  Untuk melihat statistik yang lebih mendetail atau terbaru, Anda bisa mengunjungi dashboard COVID-19 dari WHO atau platform seperti Our World in Data untuk pembaruan secara real-time bervariasi antar negara, tergantung pada tingkat vaksinasi, infrastruktur kesehatan, dan kebijakan publik yang diterapkan​');
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Title with logo below
            Text(
              'COVID-19 Emergency Response',
              style: TextStyle(
                fontSize: 30, // Bigger size for better visibility
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
                fontFamily: 'Roboto', // Changed font to improve style
                letterSpacing: 1.5, // Adding letter spacing
              ),
            ),
            SizedBox(height: 10),

            // Logo from URL
            Image.network(
              'https://th.bing.com/th/id/OIG2.r7Yk0ujbUJexyqD2kgfL?w=270&h=270&c=6&r=0&o=5&dpr=1.5&pid=ImgGn', 
              height: 100, // Set the size of the logo
              width: 100,  // Set the size of the logo
              fit: BoxFit.cover, // Ensure the image scales properly
            ),
            SizedBox(height: 20),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.blue[100],
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.local_hospital,
                  size: 40,
                  color: Colors.blue[800],
                ),
                title: Text(
                  'Emergency Contacts',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                subtitle: Text(
                  'Temukan Rumah Sakit, Pusat Vaksinasi, dan Layanan Emergency.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[700],
                  ),
                ),
                onTap: () => _showEmergencyOptions(context),
              ),
            ),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.green[100],
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.health_and_safety,
                  size: 40,
                  color: Colors.green[800],
                ),
                title: Text(
                  'Health Tips',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],
                  ),
                ),
                subtitle: Text(
                  'Ikuti terus perkembangan pedoman kesehatan terbaru untuk mencegah COVID-19.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green[700],
                  ),
                ),
                onTap: () => _showHealthTipsInfo(context), 
              ),
            ),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.orange[100],
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.analytics,
                  size: 40,
                  color: Colors.orange[800],
                ),
                title: Text(
                  'COVID-19 Stats',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[800],
                  ),
                ),
                subtitle: Text(
                  'Dapatkan data real-time mengenai kasus dan statistik COVID-19.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange[700],
                  ),
                ),
                onTap: () => _showCovidStatsInfo(context), 
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 0, // Home tab selected
      controller: controller,
    );
  }
}
