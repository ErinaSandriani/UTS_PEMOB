import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class FAQPage extends StatelessWidget {
  final HomeController controller;

  FAQPage(this.controller);

  final List<Map<String, String>> faqItems = [
    {
      'question': 'Apa itu COVID-19?',
      'answer': 'COVID-19 adalah penyakit menular yang disebabkan oleh virus corona yang baru ditemukan dan dapat menyebar melalui kontak dekat.'
    },
    {
      'question': 'Apa gejala umum COVID-19?',
      'answer': 'Gejala umum termasuk demam, batuk, dan kesulitan bernapas. Gejala lain mungkin termasuk kelelahan dan kehilangan indra penciuman atau perasa.'
    },
    {
      'question': 'Bagaimana cara mencegah penyebaran COVID-19?',
      'answer': 'Sering mencuci tangan, menjaga jarak sosial, memakai masker, dan menghindari kerumunan adalah cara utama untuk mencegah penyebaran.'
    },
    {
      'question': 'Apa yang harus dilakukan jika mengalami gejala?',
      'answer': 'Jika mengalami gejala COVID-19, tetap di rumah dan isolasi diri. Segera hubungi fasilitas kesehatan untuk mendapatkan tes COVID-19.'
    },
    {
      'question': 'Kapan harus mencari bantuan darurat?',
      'answer': 'Segera cari bantuan darurat jika mengalami kesulitan bernapas, nyeri di dada, atau kebingungan parah.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.blue[50]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: faqItems.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                backgroundColor: Colors.white,
                collapsedBackgroundColor: Colors.blue[50],
                title: Text(
                  faqItems[index]['question']!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(15),
                      ),
                      color: Colors.blue[50],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      faqItems[index]['answer']!,
                      style: TextStyle(fontSize: 16, color: Colors.blue[700]),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      selectedIndex: 2,
      controller: controller,
    );
  }
}
