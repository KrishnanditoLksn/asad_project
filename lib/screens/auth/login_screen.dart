import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen()),
  );
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF004A24),
      body: Stack(
        children: [
          // Background Putih dengan Rounded Top
          Positioned(
            left: 0,
            top: 194,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFCFCFC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),

          // Logo
          const Positioned(
            top: 257,
            left: 160,
            child: SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://placehold.co/70x70"),
              ),
            ),
          ),

          // Title "Masuk"
          const Positioned(
            top: 352,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Masuk',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'Maison Neue',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          // Email Field
          Positioned(
            top: 417,
            left: 20,
            right: 20,
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email atau username',
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
          ),

          // Password Field
          Positioned(
            top: 492,
            left: 20,
            right: 20,
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Kata Sandi',
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
          ),

          // Lupa Password
          const Positioned(
            top: 567,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Lupa Password?',
                style: TextStyle(
                  color: Color(0xFF050C9C),
                  fontSize: 16,
                  fontFamily: 'Maison Neue',
                ),
              ),
            ),
          ),

          // Tombol Masuk
          Positioned(
            top: 698,
            left: 20,
            right: 20,
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
                  debugPrint("Email: ${_emailController.text}");
                  debugPrint("Password: ${_passwordController.text}");
                },
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Maison Neue',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),

          // Belum punya akun? Daftar
          const Positioned(
            top: 773,
            left: 0,
            right: 0,
            child: Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Belum punya akun? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Maison Neue',
                      ),
                    ),
                    TextSpan(
                      text: 'Daftar',
                      style: TextStyle(
                        color: Color(0xFF050C9C),
                        fontSize: 16,
                        fontFamily: 'Maison Neue',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
