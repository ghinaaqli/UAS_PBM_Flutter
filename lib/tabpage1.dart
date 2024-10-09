import 'package:flutter/material.dart';

class NamaTab1 extends StatefulWidget {
  const NamaTab1({super.key});

  @override
  State<NamaTab1> createState() => _NamaTab1State();
}

class _NamaTab1State extends State<NamaTab1> {
  // Daftar nama hewan
  final List<String> _animals = [
    'Kucing',
    'Anjing',
    'Burung',
    'Koala',
    'Kuda',
    'Singa',
    'Harimau',
    'Gajah',
    'Panda',
    'Kambing',
    'Tikus',
    'Kelinci',
    'Hamster',
    'Ikan',
    'Burung Lovebird',
  ];

  // Daftar URL gambar hewan
  final List<String> _images = [
    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTM0VggdYwX_c2lg7gTmWDCi5QHvDYhmnleBSJ46LRXhRxrO5ow',
    'https://media.4-paws.org/1/e/d/6/1ed6da75afe37d82757142dc7c6633a532f53a7d/VIER%20PFOTEN_2019-03-15_001-2886x1999-1920x1330.jpg',
    'https://asset.kompas.com/crops/LpUgBlpMB6vjvw4_Fd0Yq3UQBZM=/0x0:1000x667/750x500/data/photo/2022/07/26/62dfce0acaeaa.jpg',
    'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/00E1/production/_99552200_koaladpa.jpg.webp',
    'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/117/2023/11/30/Screenshot-173-2238099686.png',
    'https://asset.kompas.com/crops/mF_f2uWen4246hqutSZxy2UITZo=/70x159:753x614/1200x800/data/photo/2023/02/17/63ee7ee769d1e.jpg',
    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcShejbljIEn1n2iFkKgJcj9qKyLUSDg4asvmw8KoVY84j-5cWEi',
    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRAgjeh_PZSC9gUmlm1dzEkbCsP71owoucsFWhoIYYpp7u1czrj',
    'https://cdn.antaranews.com/cache/1200x800/2022/10/13/CjkinzN007006_20221013_CBMFN0A001.jpg',
    'https://pict.sindonews.net/dyn/850/pena/news/2023/11/09/766/1247657/bukan-cuma-satu-ini-9-jenis-kambing-yang-ditemukan-di-indonesia-utk.JPG',
    'https://www.tierragro.com/wp-content/uploads/2021/05/2624C10A-9CC7-408C-8B5F-39AEFB8E2B99.jpeg',
    'https://cdn0-production-images-kly.akamaized.net/3pHqTm2ctnH4T72ZSoKEnYAY9eM=/640x0/filters:no_upscale/quality:90/1*ndS81wxpFSpBuY0jZOKhfA.jpeg',
    'https://www.buddy-bunny.com/wp-content/uploads/2020/01/12-2.png',
    'https://www.ajaib.com/wp-content/uploads/2022/01/ikan-hias-murah-ajaib.jpg',
    'https://cdn1-production-images-kly.akamaized.net/oJ4BaUAWoBBmK2DdQ0qhu2tuyzE=/640x0/filters:no_upscale/quality:90/1*1u0v24INHOUZrBy2EUVr8w.jpeg',
  ];

  final List<String> _descriptions = [
    'Kucing itu manja dan suka tidur. Mereka sering berkeliaran, cari perhatian, dan suka main-main.',
    'Anjing adalah sahabat terbaik manusia. Mereka suka diajak jalan-jalan dan suka bermain frisbee!',
    'Burung suka terbang ke sana ke mari. Kicauannya bikin suasana jadi ceria.',
    'Koala itu pemalas, lebih banyak tidur di pohon. Mereka makannya daun eukaliptus terus.',
    'Kuda itu anggun dan cepat. Mereka senang berlari dan suka dipeluk!',
    'Singa itu raja hutan. Mereka tinggal dalam kelompok dan suka menghabiskan waktu santai.',
    'Harimau adalah pemburu yang keren. Mereka suka bersembunyi dan muncul tiba-tiba!',
    'Gajah itu besar dan ramah. Mereka suka berkumpul dan selalu berkeluarga.',
    'Panda itu lucu banget, suka makan bambu dan lebih banyak duduk santai.',
    'Kambing itu suka merumput. Mereka juga suka main-main dan bisa merusak tanaman.',
    'Tikus itu kecil dan lincah. Mereka sering mengais makanan dan berlari ke sana kemari.',
    'Kelinci itu imut dan suka melompat. Mereka suka menggigit sayuran dan main di rumput.',
    'Hamster itu aktif di malam hari. Mereka suka berlari di roda dan mengumpulkan makanan.',
    'Ikan itu tenang dan enak dilihat. Mereka suka berenang dan main di akuarium.',
    'Burung Lovebird itu romantis. Mereka suka berpasangan dan saling menyayangi.',
  ];

  void _showDescription(BuildContext context, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Hobby'),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Hewan'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: _animals.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.grey.shade200,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_images[index]),
                  ),
                  title: Text(_animals[index]),
                  onTap: () {
                    _showDescription(context, _descriptions[index]);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
