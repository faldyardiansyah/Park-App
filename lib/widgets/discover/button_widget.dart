import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {},
    style: ElevatedButton.styleFrom(
      foregroundColor: AppPallete.colorTextPrimary,
      backgroundColor: AppPallete.colorwhite,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
     child: Text(text, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),));
  }
}
