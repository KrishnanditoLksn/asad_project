import 'package:asad_project/data/model/berita.dart';
import 'package:asad_project/utils/dummy_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Berita> berita = dummyNews;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ================= HEADER =================
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: const BoxDecoration(color: Color(0xFF004A24)),
                child: Image.asset(
                  "./assets/images/vector.png",
                  width: double.infinity,
                  height: 217,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                left: 16,
                top: 20,
                child: Text(
                  'Maghrib',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Positioned(
                left: 216,
                top: 10,
                child: Text(
                  'Jumat, 01 Oktober 2021\n24 Safar 1443 H',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 93,
                child: Text(
                  '17:43',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 265,
                top: 108,
                child: Row(
                  children: [
                    Image.asset(
                      "./assets/images/lokasi.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Yogyakarta',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Maison Neue',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 150),
                  width: 350,
                  height: 64,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.account_balance_wallet,
                            color: Colors.green,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Rp 23.986",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: "Maison Neue",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Lihat Keuangan",
                            style: TextStyle(
                              color: Colors.green,
                              fontFamily: "Maison Neue",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // ================= FOTO + TEKS =================
          Image.asset("./assets/images/pesantren.png"),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Pentingnya Integrasi Tasawuf dalam Kurikulum Pembelajaran',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFA4A4A4),
                fontSize: 10,
                fontFamily: 'Maison Neue',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          const SizedBox(height: 20),

          // ================= JUDUL BERITA =================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Berita & Artikel',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF004A24),
                    fontSize: 14,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), // supaya scroll ikut ListView utama
            itemCount: berita.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(dummyNews[index].imgSrc!),
                title: Text(
                  dummyNews[index].title!,
                  style: TextStyle(
                    fontFamily: "Maison Neue",
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  dummyNews[index].date!,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Maison Neue",
                    fontWeight: FontWeight.bold,
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
