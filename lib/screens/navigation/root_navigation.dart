import 'package:asad_project/screens/home/home_screen.dart';
import 'package:asad_project/screens/profil/profil_screen.dart';
import 'package:asad_project/screens/tabungan/tabungan_screen.dart';
import 'package:flutter/material.dart';

class RootNavigation extends StatefulWidget {
  const RootNavigation({super.key});

  @override
  State<StatefulWidget> createState() {
    return RootNavigationState();
  }
}

class RootNavigationState extends State<RootNavigation> {
  List<Widget> widgetList = [HomeScreen(), TabunganScreen(), ProfilScreen()];
  int currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIdx,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home.png", width: 24, height: 24),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tabungan.png',
              width: 24,
              height: 24,
            ),
            label: "Tabungan",
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profil.png',
              width: 24,
              height: 24,
            ),
            label: 'Profil',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 0, 64, 1),
        selectedLabelStyle: TextStyle(fontFamily: "Maison Neue"),
        onTap:
            (value) => {
              setState(() {
                currentIdx = value;
              }),
            },
      ),

      body: widgetList.elementAt(currentIdx),
    );
  }
}
