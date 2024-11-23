import 'package:flutter/material.dart';

class ArticlePage1 extends StatelessWidget {
  const ArticlePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'How to Dispose of Glass & Nails Safely',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cara Membuang Kaca & Paku Dengan Aman',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '1. Tutupi permukaan kaca dengan selotip. Jika ukuran pecahan kaca cukup kecil sehingga bisa dibuang seutuhnya, Anda perlu mempersiapkan kaca terlebih dahulu sebelum disingkirkan. Oleh karena kaca akan ditangani beberapa staf pengelolaan limbah, sebaiknya Anda memastikan kaca tidak pecah dan berbahaya selama prosesnya. Mulailah dengan menutupi kaca menggunakan lakban. Rekatkan selotip sampai membalut kaca supaya agak kokoh dan mencegahnya menjadi serpihan seandainya pecah.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/image/tutupipermukaankaca.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              '2. Bungkus kaca Anda. Gunakan bubble wrap (plastik pembungkus yang memiliki gelembung-gelembung udara) atau bahkan selimut bekas yang boleh dibuang untuk membungkus kaca dan eratkan bungkusan Anda dengan membalutkan selotip. Dengan demikian, walaupun kaca Anda pecah dan tidak tertahan oleh selotip, pecahannya masih ditampung oleh bubble wrap atau selimut yang membungkus kaca.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/image/bungkuskaca.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              '3. Beri label di pembungkus kaca. Setelah kaca terbungkus dengan rapi, beri label di pembungkus kaca Anda sehingga orang yang menanganinya tahu bahwa “paket” Anda harus dibawa dengan hati-hati. Anda cukup menempelkan kertas bertuliskan “Kaca untuk dibuang”.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '4. Masukkan kantong sampah ke kotak kardus. Sebagian perusahaan mungkin juga meminta Anda membuang pecahan kaca ke dalam wadah padat. Jika demikian, Anda juga perlu memasukkan kantong sampah berisi pecahan kaca ke kotak kardus, menyegelnya, dan memberi label "pecahan kaca".',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/image/masukankekardus.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              '5. Masukkan wadah ke tempat sampah bersama sampah lainnya. Sekarang, pecahan kaca sudah dibungkus dengan baik dan dilengkapi label peringatan sehingga Anda bisa membuangnya layaknya sampah biasa ke tempat sampah depan rumah atau tempat sampah publik.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
