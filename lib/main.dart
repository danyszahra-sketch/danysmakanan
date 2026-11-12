import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  Tes({super.key});

  final List<String> menu = ["Soto", "Rawon"];
  final List<int> harga = [10000, 15000];
  final List<String> gambar = [
    "assets/soto.jpg",
    "assets/rawon.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Menu Makanan"),
        ),
        body: Table(
          border: TableBorder.all(width: 2),
          children: [
            const TableRow(
              children: [
                Text("No"),
                Text("Gambar"),
                Text("Menu"),
                Text("Harga"),
              ],
            ),
            for (int i = 0; i < menu.length; i++)
              TableRow(
                children: [
                  Text("${i + 1}"),
                  Image.asset(
                    gambar[i],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  Text(menu[i]),
                  Text("Rp ${harga[i]}"),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
