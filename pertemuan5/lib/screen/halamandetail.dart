import 'package:flutter/material.dart';

class Halamandetail extends StatelessWidget {
  var menu;
  var harga;
  Halamandetail({
    super.key, required this.menu, required this.harga
    }
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menu),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(menu),
            Text(harga)
          ],
        ),
      ),
    );
  }
}