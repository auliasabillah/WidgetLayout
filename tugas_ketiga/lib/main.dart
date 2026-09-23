import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Beranda(),
      ),
    ),
  );
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.ramen_dining, color: Colors.deepOrange, size: 40),
            title: const Text('Nasi Goreng Spesial'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMakanan(
                    nama: 'Nasi Goreng Spesial',
                    harga: 'Rp 25.000',
                    deskripsi: 'Nasi goreng dengan telur, ayam suwir, dan acar segar.',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_pizza, color: Colors.deepOrange, size: 40),
            title: const Text('Pizza Keju Jumbo'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMakanan(
                    nama: 'Pizza Keju Jumbo',
                    harga: 'Rp 65.000',
                    deskripsi: 'Pizza ukuran besar dengan topping keju mozzarella melimpah.',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.icecream, color: Colors.deepOrange, size: 40),
            title: const Text('Es Cream Coklat'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMakanan(
                    nama: 'Es Krim Coklat',
                    harga: 'Rp 15.000',
                    deskripsi: 'Es krim coklat lembut dengan taburan kacang almond.',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DetailMakanan extends StatefulWidget {
  final String nama;
  final String harga;
  final String deskripsi;
  DetailMakanan({required this.nama, required this.harga, required this.deskripsi});
  @override
  State<DetailMakanan> createState() => DetailMakananState();
}

class DetailMakananState extends State<DetailMakanan> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Makanan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.nama,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              widget.harga,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.orange[50],
              ),
              child: Text(widget.deskripsi),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isFavorite ? const Color.fromARGB(255, 255, 181, 207) : Colors.white,
              ),
              child: Text(isFavorite ? 'Favorit ♥' : 'Tambah ke Favorit'),
            ),
          ],
        ),
      ),
    );
  }
}