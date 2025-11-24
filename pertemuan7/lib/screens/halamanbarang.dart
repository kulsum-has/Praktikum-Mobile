import 'package:flutter/material.dart';
import 'package:pertemuan7/models/barang.dart';
import 'package:pertemuan7/models/keranjang.dart';
import 'package:pertemuan7/screens/halamankeranjang.dart';
import 'package:provider/provider.dart';

class HalamanBarang extends StatelessWidget {
  const HalamanBarang({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Barang> listBarang = [
      Barang('Monitor'),
      Barang('Headset'),
      Barang('Speaker'),
      Barang('Keyboard'),
      Barang('Mouse'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar barang'),
        backgroundColor: const Color.fromARGB(255, 83, 76, 116),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Consumer<Keranjang>(
              builder: (context, value, child) {
                return Badge(
                  label: Text('${value.totalIsi}'),
                  isLabelVisible: value.totalIsi > 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HalamanKeranjang(),
                        ),
                      );
                    },
                    icon: Icon(Icons.shopping_cart_checkout),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listBarang.length,
        itemBuilder: (context, index) {
          final bar = listBarang[index];
          return ListTile(
            title: Text(bar.nama),
            trailing: IconButton(
              onPressed: () {
                Provider.of<Keranjang>(context, listen: false).tambah(bar);
              },
              icon: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}