import 'package:asad_project/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
      // // ================= LISTVIEW HORIZONTAL =================
            // SizedBox(
            //   height: 150,
            //   child: ListView.builder(
            //     itemCount: berita.length,
            //     scrollDirection: Axis.horizontal,
            //     padding: const EdgeInsets.symmetric(horizontal: 16),
            //     itemBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.only(right: 12),
            //         child: BeritaTile(
            //           berita[index].imgSrc!,
            //           berita[index].title!,
            //           berita[index].date!,
            //         ),
            //       );
            //     },
            //   ),
            // ),
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
