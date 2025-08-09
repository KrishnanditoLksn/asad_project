import 'package:asad_project/screens/navigation/root_navigation.dart';
import 'package:asad_project/services/file_pick.dart';
import 'package:flutter/material.dart';

class BuktiSetorScreen extends StatefulWidget {
  const BuktiSetorScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return BuktiSetorScreenState();
  }
}

class BuktiSetorScreenState extends State<BuktiSetorScreen> {
  String labelText = "Tambah Foto";
  Icon icon = Icon(Icons.add);
  bool hasFile = false; // awalnya belum ada file
  bool isUploading = false; // status upload

  Future<void> _getSingle() async {
    String res = await singleFile();

    setState(() {
      labelText = res;
      icon = Icon(Icons.done);
      hasFile = true;
      isUploading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Column(
            children: [
              Container(
                width: 166,
                height: 166,
                margin: EdgeInsets.all(8.0),
                child: Image.asset("./assets/images/bukti_berhasil.png"),
              ),

              Text(
                'Terima kasih!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w700,
                ),
              ),

              Text(
                'Mohon untuk menyertakan bukti pembayaran agar transaksi bisa kami proses.\nLangkah ini bersifat wajib.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          SizedBox(height: 29),

          Container(
            // margin: EdgeInsets.only(right: 17),
            width: 350,
            height: 170,
            decoration: ShapeDecoration(
              color: const Color(0xFFF6F6F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 17, right: 17),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Detail pembayaran',
                        style: TextStyle(
                          color: const Color(0xFFADADAD),
                          fontSize: 14,
                          fontFamily: 'Maison Neue',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Jumlah transfer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Maison Neue',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Bank yang dipakai',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Maison Neue',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Jenis pembayaran',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Maison Neue',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 100),
                    child: Column(
                      children: [
                        SizedBox(height: 45),
                        Text(
                          'Rp501,000',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Bank BRI',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Biaya Asrama',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Maison Neue',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          //UPLOAD FILE
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            width: 350,
            height: 64,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                //UPLOAD FILE
                _getSingle();
                // _updateChecklist();
              },
              child: Row(
                children: [
                  icon,
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      labelText,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                        fontFamily: 'Maison Neue',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(bottom: 25, left: 5, right: 1),
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
                      MaterialPageRoute(builder: (context) => RootNavigation()),
                    );
                  },
                  child: Text(
                    'Kembali ke Home',
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
