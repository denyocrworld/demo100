import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Contoh widget yang akan diuji (form login)
class LoginForm extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
          ElevatedButton(
            onPressed: () async {
              final String username = usernameController.text;
              final String password = passwordController.text;
              final response = await http.post(
                Uri.parse(
                    'https://api.example.com/login'), // Ganti dengan URL login Anda.
                body: jsonEncode({'username': username, 'password': password}),
                headers: {'Content-Type': 'application/json'},
              );

              if (response.statusCode == 200) {
                // Login berhasil, lakukan tindakan setelah login sukses.
              } else {
                // Gagal login, munculkan pesan kesalahan.
              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
