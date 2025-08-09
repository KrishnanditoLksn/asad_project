import 'package:flutter/material.dart';

class DetailTransaksi extends StatelessWidget {
  final String? tanggal;
  final String? nominalTransaksi;
  final String? jenisTransaksi;

  const DetailTransaksi(
    this.tanggal,
    this.nominalTransaksi,
    this.jenisTransaksi, {
    super.key,
  });

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
                      'Detail Transaksi',
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

          Container(
            margin: EdgeInsets.only(top: 20),
            width: 350,
            height: 481,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: const Color(0xFFDDDDDD)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            child: Column(
              children: [
                Column(
                  children: [
                    if (jenisTransaksi == "Setoran")
                      Image.asset(
                        width: 88,
                        height: 88,
                        "assets/images/setor.png",
                      )
                    else
                      Image.asset(
                        width: 88,
                        height: 88,
                        "./assets/images/penarikan.png",
                      ),
                    SizedBox(height: 15),
                    Text(
                      'Total $jenisTransaksi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Maison Neue',
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    Text(
                      '$nominalTransaksi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'Maison Neue',
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Container(
                      width: 312,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: const Color(0xFF7E7E7E),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 11, right: 50),
                      child: Column(
                        children: [
                          Text(
                            'Waktu transaksi',
                            style: TextStyle(
                              color: const Color(0xFF656565),
                              fontSize: 14,
                              fontFamily: 'Maison Neue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Transaksi ID ',
                            style: TextStyle(
                              color: const Color(0xFF656565),
                              fontSize: 14,
                              fontFamily: 'Maison Neue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Status Transaksi',
                            style: TextStyle(
                              color: const Color(0xFF656565),
                              fontSize: 14,
                              fontFamily: 'Maison Neue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          if (jenisTransaksi != "Penarikan")
                            Text(
                              "Detail Penerima",
                              style: TextStyle(
                                color: Color(0xFF656565),
                                fontSize: 14,
                                fontFamily: 'Maison Neue',
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                          if (jenisTransaksi != "Penarikan")
                            Text(
                              'Pesan (opsional)',
                              style: TextStyle(
                                color: const Color(0xFF656565),
                                fontSize: 14,
                                fontFamily: 'Maison Neue',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11, right: 5),
                      child: Column(
                        children: [
                          Text(
                            '$tanggal, 12:30',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Maison Neue',
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                'q239ke993173klsjf...',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Maison Neue',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              Icon(Icons.copy),
                            ],
                          ),

                          //STATUS BERHASIL
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: ShapeDecoration(
                              color:
                                  jenisTransaksi == "Penarikan"
                                      ? Color(0xFFCED0FA)
                                      : Color(0xFFEBE9E9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 4,
                              children: [
                                Text(
                                  'Berhasil',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF004A24),
                                    fontSize: 14,
                                    fontFamily: 'Maison Neue',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //DETAIL PENERIMA
                          if (jenisTransaksi != "Penarikan")
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: ' PESANTREN\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Maison Neue',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '098123486759020',
                                    style: TextStyle(
                                      color: const Color(0xFFA4A4A4),
                                      fontSize: 14,
                                      fontFamily: 'Maison Neue',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                                // ],
                              ),
                              textAlign: TextAlign.right,
                            ),

                          //PESAN OPTIONAL
                          if (jenisTransaksi != "Penarikan")
                            Text(
                              'Pembayaran sewa asrama',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Maison Neue',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //LIHAT BUKTI SETOR
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
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (_) => ImageDialog(),
                    );
                  },
                  child: const Text(
                    'Lihat Bukti Setor',
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

class ImageDialog extends StatelessWidget {
  const ImageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 348,
        height: 585,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('./assets/images/brisetor.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
