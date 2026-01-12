import 'package:flutter/material.dart';
import 'card.dart';
import 'stfulcard.dart';

void main() {
  runApp(const MainApp());
}

// [KONSEP]: Ini Gerbang Utama Aplikasi
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Opsional: Biar pita "Debug" ilang
      home: Scaffold(
        body: Login() // Manggil halaman Login di bawah
      ),
    );
  }
}

// [KONSEP]: Halaman Login (Stateless karena cuma UI statis, belum ada logic aneh2)
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // [LAYOUT]: Center biar kotaknya pas di tengah layar
    return Center(
      
      // [TRIK UJIAN]: Container ini sebenernya bisa diganti widget "Card"
      // biar gak usah nulis BoxDecoration & Shadow sepanjang ini.
      // Tapi kalau mau tetep gini, hafalin strukturnya: Container -> Decoration -> Shadow
      child: Container(
        padding: EdgeInsets.all(35),
        width: 400,
        height: 600,
        
        // [DEKORASI KOTAK UTAMA]
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // Sudut tumpul
          boxShadow: [
            BoxShadow(
              color: Colors.black26, // Warna bayangan transparan
              blurRadius: 10,       // Seberapa nge-blur bayangannya
              offset: Offset(0, 4)  // Posisi bayangan (x, y)
            )
          ]
        ),
        
        // [STRUKTUR UTAMA]: Column buat nyusun Widget ke BAWAH
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            // --- BAGIAN 1: LOGO ICON ---
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ]
              ),
              child: Icon(Icons.login, size: 40),
            ),

            SizedBox(height: 24), // Spasi antar elemen

            // --- BAGIAN 2: JUDUL TEKS ---
            Text("Welcome Back", style: TextStyle(
              fontWeight: FontWeight.bold, // [HAFALAN]: Huruf Tebal
              fontSize: 30,
            )),
            
            Text(
              "Make sure to sign in before accessing through our app!!", 
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center, // Biar teks panjang rapi di tengah
            ),

            SizedBox(height: 24),

            // --- BAGIAN 3: INPUT EMAIL (TextField) ---
            // [HAFALAN WAJIB]: Struktur TextField & InputDecoration
            TextField(
              decoration: InputDecoration(
                // Bikin border kotak tumpul
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none //ilangin garis tepi karena udah ada warna fill
                ),
                filled: true, // Wajib true biar fillColor muncul
                fillColor: Colors.grey.shade200, // [TRIK]: Cukup tulis Colors.grey aja di kertas
                hintText: "Email", // [WAJIB]: Tulisan petunjuk samar
                prefixIcon: Icon(Icons.email), // Ikon kecil di kiri input
              ),
            ),

            SizedBox(height: 15),

            // --- BAGIAN 4: INPUT PASSWORD ---
            TextField(
              obscureText: true, // [WAJIB HAFAL]: Biar teks jadi bintang2 (******)
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: "Password",
                prefixIcon: Icon(Icons.lock)
              ),
            ),
            
            SizedBox(height: 15),

            // --- BAGIAN 5: FORGOT PASSWORD (Posisi Kanan) ---
            // [LOGIKA LAYOUT]: Pake Row + MainAxisAlignment.end biar nempel kanan
            Row(
              mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 15),

            // --- BAGIAN 6: TOMBOL LOGIN (Navigasi) ---
            // Dibungkus SizedBox biar bisa atur lebar tombol (width: 400)
            SizedBox(
              width: 400,
              height: 40,
              child: ElevatedButton(
                // [LOGIKA NAVIGASI]: Pindah halaman (Push)
                onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => LoveCard())
                  );
                },
                
                // [STYLING TOMBOL]
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    // [KOREKSI]: Cukup BorderRadius.circular (Jgn pake Geometry)
                    borderRadius: BorderRadius.circular(10), 
                    side: BorderSide.none
                  ),
                  elevation: 10,
                ),
                child: Text(
                  "Lets Get Started!!", 
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                )
              ),
            ),

            SizedBox(height: 30),

            // --- BAGIAN 7: SOCIAL LOGIN (Footer) ---
            Text(
              "Or Sign In with",
              textAlign: TextAlign.right, 
              style: TextStyle(fontSize: 12),
            ),

            SizedBox(height: 30),

            // [LAYOUT SOSMED]: Pake Row + SpaceEvenly biar jaraknya rata
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // [TRIK UJIAN]: Gak usah tulis URL panjang!
                // Cukup tulis: Image.network('url_google')
                Image.network(
                  'https://cdn-teams-slug.flaticon.com/google.jpg',
                  width: 35,
                  height: 35,
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/960px-2021_Facebook_icon.svg.png',
                  width: 25,
                  height: 25,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fj1vqat9XLO4cFwOG1uFqLXYDcISiYil2w&s',
                  width: 25,
                  height: 25,
                ),

              ],
            )
            

            
            
          ],
        ),
      ),
    );
  }
}
