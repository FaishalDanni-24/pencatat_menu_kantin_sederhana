import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/menu_item.dart';
import '../widgets/custom_text.dart';
import '../pages/detail_menu_page.dart';
import '../pages/tambah_menu_page.dart';

// Stateful widget untuk halaman daftar menu
class DaftarMenuPage extends StatefulWidget {
  const DaftarMenuPage({super.key});

  @override
  State<DaftarMenuPage> createState() => _DaftarMenuPageState();
}

// Penanganan state di halaman daftar menu
class _DaftarMenuPageState extends State<DaftarMenuPage> {
  // Minimal 5 data awal menu kantin
  List<MenuItemModel> menuList = [
    MenuItemModel(name: 'Nasi Goreng Spesial', price: 'Rp 15.000'),
    MenuItemModel(name: 'Mie Ayam Bakso', price: 'Rp 12.000'),
    MenuItemModel(name: 'Es Teh Manis', price: 'Rp 4.000'),
    MenuItemModel(name: 'Ayam Geprek Madu', price: 'Rp 18.000'),
    MenuItemModel(name: 'Soto Ayam Lamongan', price: 'Rp 14.000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Daftar Menu Kantin',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange[800],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: const CustomText(
                text: 'Daftar Makanan & Minuman Tersedia:',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menuList.length,
              itemBuilder: (context, index) {
                final menu = menuList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    onTap: () {
                      Get.to(() => DetailMenuPage(menu: menu));
                    },
                    leading: const Icon(Icons.fastfood, color: Colors.orange),
                    title: CustomText(
                      text: menu.name,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitle: CustomText(
                      text: menu.price,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Get.to(() => const TambahMenuPage());
          if (result != null && result is MenuItemModel) {
            setState(() {
              menuList.add(result);
            });
          }
        },
        backgroundColor: Colors.orange[800],
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}