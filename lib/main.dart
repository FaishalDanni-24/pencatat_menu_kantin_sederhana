import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/daftar_menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(    
      title: 'Pencatat Menu Kantin',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: const DaftarMenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}