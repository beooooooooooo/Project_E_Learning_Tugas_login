import 'dart:ui'; 
import 'package:flutter/material.dart';
import 'package:tugaslogin/constain.dart';

void main() {
  runApp(const MyLogin());
}

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ===== Background =====
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/travis.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        // ===== Konten utama =====
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ClipRect( 
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.3),
                      width: 1.5,
                    ),
                  ),

                  // ===== Isi Form =====
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // HEADER
                        Text(
                          "Halooooo",
                          style: textTextStyle.copyWith(
                            fontSize: 30,
                            fontWeight: bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "ini adalah tugas buat form login",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 13,
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 50),

                        // EMAIL
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email",
                            style: textTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buildInputField(
                          "Masukkan email anda",
                          false,
                          icon: Icons.person,
                        ),

                        const SizedBox(height: 20),

                        // PASSWORD
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: textTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buildInputField(
                          "Masukkan password anda",
                          true,
                          icon: Icons.lock,
                        ),

                        const SizedBox(height: 20),

                        // REMEMBER ME
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _rememberMe = !_rememberMe;
                                    });
                                  },
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      color: _rememberMe
                                          ? Colors.deepPurple
                                          : Colors.transparent,
                                      border: Border.all(
                                        color:
                                            Colors.white.withValues(alpha: 0.8),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: _rememberMe
                                        ? const Icon(Icons.check,
                                            color: Colors.white, size: 16)
                                        : null,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Remember me",
                                  style: TextStyle(
                                    color: Colors.white.withValues(alpha: 0.9),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Pasti lupa pw",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withValues(alpha: 0.9),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        // LOGIN BUTTON
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [Color(0xFF2B0A82), Color(0xFF5E40E8)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "LOG IN",
                              style: secondaryTextStyle.copyWith(
                                fontWeight: bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // SIGN IN GOOGLE
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [Color.fromARGB(255, 12, 0, 250), Color(0xFF877CFF)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-1024.png",
                                  height: 24,
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  "SIGN IN WITH GOOGLE",
                                  style: textTextStyle.copyWith(
                                    fontWeight: bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // FOOTER
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Belum punya akun yaaaa?",
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.9),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              " Masokk",
                              style: TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ===== Reusable Input Field =====
  Widget _buildInputField(String hint, bool isPassword, {IconData? icon}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF6DB3F2), 
          width: 1.5,
        ),
      ),
      child: TextField(
        obscureText: isPassword ? _obscureText : false,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.blue[700]),
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
          ),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey.shade700,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
