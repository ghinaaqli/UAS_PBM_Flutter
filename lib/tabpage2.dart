import 'package:flutter/material.dart';

class NamaTab2 extends StatefulWidget {
  const NamaTab2({super.key});

  @override
  State<NamaTab2> createState() => _NamaTab2State();
}

class _NamaTab2State extends State<NamaTab2> {
  List<String> _cartItems = [];
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
  ];

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
  ];

  final List<double> _prices = [
    1500000.0,
    2000000.0,
    800000.0,
    1200000.0,
    2500000.0,
    3000000.0,
    4000000.0,
    5000000.0,
    3500000.0,
    600000.0,
  ];

  void _addToCart(String animal) {
    setState(() {
      _cartItems.add(animal);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$animal ditambahkan ke keranjang')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang Belanja'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.white,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          padding: const EdgeInsets.all(8.0),
          itemCount: _animals.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        _images[index],
                        fit: BoxFit.cover,
                        height: 30,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _animals[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Harga: Rp${_prices[index].toStringAsFixed(0)}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _addToCart(_animals[index]);
                    },
                    child: const Text('Checkout'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
