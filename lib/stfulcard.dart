import 'package:flutter/material.dart';

class LoveCard extends StatefulWidget {
  const LoveCard({super.key});

  @override
  State<LoveCard> createState() => _LoveCardState();
}

class _LoveCardState extends State<LoveCard> {
  // 1. Ini VARIABLE STATE (Data yang bakal berubah)
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Pake scaffold biar rapi pas dicoba
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            // Logika Ganti Icon dan Warna pake "Ternary Operator" (? :)
            // Bacanya: "Kalau isLoved true, pake Heart Penuh. Kalau false, pake Heart kosong"
            Icon(
              isLoved ? Icons.favorite : Icons.favorite_border,
              size: 100,
              color: isLoved ? Colors.red : Colors.grey, 
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // 2. Ini TOMBOL AJAIBNYA
                // Wajib bungkus perubahan variabel pake setState()
                setState(() {
                  isLoved = !isLoved; // Ubah nilai true jadi false, atau sebaliknya
                });
              },
              child: Text(isLoved ? "Unlike" : "Like"),
            )
          ],
        ),
      ),
    );
  }
}