import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
Font Poppins digunakan, karena tidak terlihat kaku atau lebih nyantai (casual)
Gaya tampilan yang diberikan adalah Font Weight (Ketebalan font) dan Color (Warna font),
Kombinasi ini cukup dalam memberikan kesan kepentingan teksnya dan kenyamanan saat membaca.
*/
class CustomText extends StatelessWidget {
  // Atribut yang diperlukan untuk membuat custom text
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  // Constructor saat membuat instance dari CustomText
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color,
  });

  // Render CustomText
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? Colors.black87,
      ),
    );
  }
}