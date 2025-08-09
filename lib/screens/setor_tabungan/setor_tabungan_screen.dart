import 'package:asad_project/data/model/bank_pilihan.dart';
import 'package:asad_project/screens/setor_tabungan/setor_tabungan_pilihan.dart';
import 'package:asad_project/screens/topup/nominal_top_up.dart';
import 'package:asad_project/utils/dummy_data.dart';
import 'package:flutter/material.dart';

class SetorTabunganScreen extends StatelessWidget {
  final List<BankPilihan> bank = bankPilihan;
  SetorTabunganScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 110,
            color: const Color(0xFF004A24),
            padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
            child: Row(
              children: [
                // Tombol Back
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                // Judul di tengah
                Expanded(
                  child: Center(
                    child: Text(
                      'Setor Tabungan',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Maison Neue',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                // Spacer supaya jarak kanan sama dengan jarak tombol back
                const SizedBox(width: 48),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 26, left: 20, right: 264),
            child: Column(
              children: [
                Text(
                  'Transfer Via Bank',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), // supaya scroll ikut ListView utama
            itemCount: bank.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  width: 45,
                  height: 30,
                  decoration: BoxDecoration(color: const Color(0xFFD9D9D9)),
                ),
                title: Text(
                  bank[index].namaBank!,
                  style: TextStyle(
                    fontFamily: "Maison Neue",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Minimal transaksi RP${bank[index].minTransaksi!}",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Maison Neue",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed:
                      () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    NominalTopUp(bank[index].namaBank!),
                          ),
                        ),
                      },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
