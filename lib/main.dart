import 'package:flutter/material.dart';
import 'screens/login_page.dart'; // Mengarah ke folder screens

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TemuKampus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // Gunakan tanpa const jika terjadi error constant expression
      home: LoginPage(), 
      debugShowCheckedModeBanner: false,
    );
  }
}