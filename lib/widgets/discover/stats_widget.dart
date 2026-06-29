import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class StatsWidget extends StatelessWidget {
  final String icon;
  final String text;
  const StatsWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(icon, height: 16, width: 16, colorFilter: const ColorFilter.mode(AppPallete.colorTextSecondary, BlendMode.srcIn),),
      const SizedBox(width: 5),
      Text(text, style: GoogleFonts.poppins(color: AppPallete.colorTextSecondary),),
    ],);
  }
}
