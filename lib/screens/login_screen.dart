import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thelhoapp/components/custom_button.dart';
import 'package:thelhoapp/components/custom_icon.dart';
import 'package:thelhoapp/components/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 218, 252),
              Color.fromARGB(255, 193, 233, 251),
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: const Color.fromARGB(255, 193, 235, 255),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.yard,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'APLIKASI HITUNG DOSA',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  textAlign: TextAlign.center,
                  'Marilah kita masuk , untuk mulai menggunakan aplikasi ini',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                CustomTextfield(
                  controller: _emailController,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey.shade600,
                    size: 22,
                  ),
                  hintText: 'Email',
                  obsecureText: false,
                ),
                const SizedBox(height: 10),
                CustomTextfield(
                  controller: _passwordController,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey.shade600,
                    size: 22,
                  ),
                  hintText: 'Password',
                  obsecureText: true,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off,
                      size: 22,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Lupa password?",
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  buttonText: 'Masuk',
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Text(
                      'Or Sign in with',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomIcon(
                      icon: FontAwesomeIcons.google,
                      color: Colors.blue,
                    ),
                    const CustomIcon(
                      icon: FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                    CustomIcon(
                      icon: FontAwesomeIcons.tiktok,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
