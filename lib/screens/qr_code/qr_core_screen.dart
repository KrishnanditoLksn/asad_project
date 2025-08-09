import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrlink_flux/qrlink_flux.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004A24),
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
                      'QR Code',
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

          Stack(
            children: [
              // Container(
              //   width: 64,
              //   height: 64,
              //   decoration: ShapeDecoration(
              //     color: const Color(0xFFFFFDEA),
              //     shape: OvalBorder(
              //       side: BorderSide(
              //         width: 8,
              //         strokeAlign: BorderSide.strokeAlignOutside,
              //         color: const Color(0xFF004A24),
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(top: 100),
                width: 351,
                height: 486,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 65),
                      child: Text(
                        'Tunjukkan QR untuk pembayaran',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Maison Neue',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 39, right: 39, top: 39),
                      child: QrLinkFlux(
                        size: 200,
                        fileUrl:
                            "https://api.flutter.dev/flutter/widgets/Expanded-class.html",
                      ),
                    ),
                    SizedBox(height: 21),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFE0E0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Text(
                            'Kode berlaku 00:20',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFFE22929),
                              fontSize: 16,
                              fontFamily: 'Maison Neue',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 35),
          Text(
            'Pastikan nominal transaksi sudah sesuai',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Maison Neue',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
