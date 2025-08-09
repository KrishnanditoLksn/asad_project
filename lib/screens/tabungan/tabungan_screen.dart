import 'package:asad_project/data/model/berita.dart';
import 'package:asad_project/data/model/history_transaksi.dart';
import 'package:asad_project/screens/detail_transaksi/detail_transaksi.dart';
import 'package:asad_project/screens/setor_tabungan/setor_tabungan_screen.dart';
import 'package:asad_project/utils/dummy_data.dart';
import 'package:flutter/material.dart';

class TabunganScreen extends StatelessWidget {
  TabunganScreen({super.key});
  final List<Berita> berita = dummyNews;
  final List<HistoryTransaksi> transaksi = history;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: 430,
            height: 110,
            decoration: BoxDecoration(color: const Color(0xFF004A24)),
            margin: EdgeInsets.only(bottom: 10, left: 1, right: 1),
            child: Container(
              margin: EdgeInsets.only(
                top: 39,
                left: 151,
                right: 150,
                bottom: 40,
              ),
              child: Text(
                'Tabungan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Tanggal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Icon(Icons.calendar_month),
            ],
          ),

          SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF6F6F6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Saldo
                const Text(
                  'Saldo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Rp 9.775.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
                const SizedBox(height: 16),

                // Bagian Setoran, Penarikan, dan Tombol
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Setoran + Penarikan
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Setoran',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rp 10.720.000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Penarikan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rp 945.000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    // Tombol
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF004A24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SetorTabunganScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Setor Tabungan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 33),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Histori Transaksi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Maison Neue',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: history.length,
            separatorBuilder:
                (context, index) => const Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey, // bisa disesuaikan warnanya
                ),
            itemBuilder: (context, index) {
              return ListTile(
                onTap:
                    () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  DetailTransaksi(history[index].jenis!),
                        ),
                      ),
                    },
                title: Text(
                  history[index].jenis!,
                  style: const TextStyle(
                    fontFamily: "Maison Neue",
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  history[index].tanggal!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: "Maison Neue",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  history[index].pengeluaran!,
                  style: const TextStyle(
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
