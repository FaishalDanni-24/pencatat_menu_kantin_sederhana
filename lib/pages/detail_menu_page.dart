import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/menu_item.dart';
import '../widgets/custom_text.dart';

// Stateless Widget untuk halaman detail menu
class DetailMenuPage extends StatelessWidget {
  // Atribut yang dibutuhkan untuk isi halaman detail menu
  final MenuItemModel menu;
  const DetailMenuPage({super.key, required this.menu});

  // Render halaman detail menu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Detail Menu',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange[800],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Informasi Menu Kantin',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomText(
                      text: 'Nama Menu:',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 4),
                    CustomText(
                      text: menu.name,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    const Divider(height: 30),
                    const CustomText(
                      text: 'Harga:',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 4),
                    CustomText(
                      text: menu.price,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[800],
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => Get.back(),
                child: const CustomText(
                  text: 'Kembali',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}