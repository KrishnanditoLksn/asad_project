import 'package:asad_project/screens/setor_tabungan/setor_tabungan_pilihan.dart';
import 'package:flutter/material.dart';

class NominalTopUp extends StatefulWidget {
  final String namaBank;
  const NominalTopUp(this.namaBank, {super.key});

  @override
  State<StatefulWidget> createState() {
    return NominalState();
  }
}

class NominalState extends State<NominalTopUp> {
  final _nominalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 110,
            color: const Color(0xFF004A24),
            padding: const EdgeInsets.only(top: 1, left: 8, right: 8),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
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
                const SizedBox(width: 48),
              ],
            ),
          ),

          //BANK DIPILIH
          Container(
            margin: const EdgeInsets.only(left: 20, top: 40, right: 264),
            child: const Text(
              'Bank yang dipilih',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Maison Neue',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: 350,
            height: 64,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  width: 45,
                  height: 30,
                  color: Colors.grey[300],
                ),
                SizedBox(width: 8),
                Text(
                  //akses properti didalam state
                  widget.namaBank,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),

          //Jumlah Transfer
          Container(
            margin: EdgeInsets.only(left: 10, top: 30, right: 10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Jumlah transfer',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Maison Neue',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _nominalController,
                  decoration: InputDecoration(
                    hintText: 'Rp0',
                    hintStyle: const TextStyle(
                      color: Color(0xFFB2B2B2),
                      fontSize: 16,
                      fontFamily: 'Maison Neue',
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(color: Color(0xFFE6E6E6)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          //Informasi Pembayaran
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Informasi Pembayaran',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Maison Neue',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            width: 350,
            height: 48,
            decoration: ShapeDecoration(
              color: const Color(0xFFF6F6F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Jenis Pembayaran',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 100),
            child: Expanded(
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF004A24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => SetorTabunganPilihan(widget.namaBank),
                      ),
                    );
                  },
                  child: const Text(
                    'Lanjut',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Maison Neue',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
