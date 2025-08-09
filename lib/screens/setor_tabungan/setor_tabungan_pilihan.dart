import 'package:asad_project/screens/setor_tabungan/bukti_setor_screen.dart';
import 'package:flutter/material.dart';

class SetorTabunganPilihan extends StatelessWidget {
  final String bankPilihan;
  const SetorTabunganPilihan(this.bankPilihan, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero, // biar mirip Column tanpa jarak tambahan
        children: [
          // AppBar custom
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

          // Bank yang dipilih
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
          const SizedBox(height: 20),

          Container(
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
                  margin: const EdgeInsets.only(left: 20),
                  width: 45,
                  height: 30,
                  color: Colors.grey[300],
                ),
                const SizedBox(width: 8),
                const Text(
                  "Bank BRI",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Detail Pembayaran
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'Detail Pembayaran',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Maison Neue',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          const SizedBox(height: 20),

          Container(
            width: 350,
            decoration: ShapeDecoration(
              color: const Color(0xFFFFFDEA),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF8386D6)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 17),
                        child: Text(
                          'Jumlah transfer',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 4),
                        child: Text('Biaya', style: TextStyle(fontSize: 14)),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xFF8386D6),
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 12),
                        child: Text(
                          'Total setoran',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 17, right: 12),
                        child: Text('Rp500,000'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4, right: 12),
                        child: Text('Rp1,000'),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xFF8386D6),
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 12, right: 12),
                        child: Text(
                          'Rp501,000',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Informasi Bank
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Informasi Bank',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Transfer total setoran dengan tujuan akun berikut:',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          Container(
            width: 350,
            height: 132,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),

            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 17),
                        child: Text(
                          'Nomor akun bank',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 4),
                        child: Text(
                          '098123486759020',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 176, 177, 184),
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 12),
                        child: Text(
                          'Nomor akun bank',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 1),
                        child: Text(
                          'PESANTREN',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 17, right: 12),
                        child: Icon(Icons.copy, weight: 24),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 176, 177, 184),
                          height: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Cara Pembayaran
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Cara pembayaran',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Maison Neue',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

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
                  'Melalui ATM $bankPilihan',
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

          const SizedBox(height: 40),

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
                  'Melalui mobile banking $bankPilihan',
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

          SizedBox(height: 24),

          Container(
            margin: EdgeInsets.only(bottom: 25, left: 5, right: 5),
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
                        builder: (context) => BuktiSetorScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Saya Sudah Transfer',
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
