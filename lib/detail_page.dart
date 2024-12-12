import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String animalName;
  final String imageUrl;
  final String description;

  const DetailPage({
    super.key,
    required this.animalName,
    required this.imageUrl,
    required this.description,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isInWishlist = false;

  void _toggleWishlist() {
    setState(() {
      _isInWishlist = !_isInWishlist;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(_isInWishlist
              ? '${widget.animalName} ditambahkan ke Wishlist'
              : '${widget.animalName} dihapus dari Wishlist')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animalName),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(widget.imageUrl),
                    backgroundColor: Colors.grey[200],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.animalName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    widget.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: const Text('Kembali'),
                ),
                const SizedBox(height: 16),
                IconButton(
                  icon: Icon(
                      _isInWishlist ? Icons.favorite : Icons.favorite_border),
                  onPressed: _toggleWishlist,
                  color: Colors.red,
                  iconSize: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
