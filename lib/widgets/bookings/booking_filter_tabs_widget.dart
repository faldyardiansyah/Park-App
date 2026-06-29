import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class BookingFilterTabsWidget extends StatelessWidget {
  const BookingFilterTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          _buildTabButton('All Orders', isActive: true),
          const SizedBox(width: 10,),
          _buildTabButton('Ongoing', isActive: false),
          const SizedBox(width: 10,),
          _buildTabButton('Completed', isActive: false),
        ],
      )
    );
  }
}

Widget _buildTabButton (String title, {required bool isActive}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      color : isActive ? AppPallete.colorprimary : AppPallete.colorwhite,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(title, style: GoogleFonts.poppins(color: isActive ? AppPallete.colorwhite : AppPallete.colorTextPrimary, fontSize: 14, fontWeight: FontWeight.w600),),
  );
}