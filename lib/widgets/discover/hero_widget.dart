import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class HeroWidgets extends StatelessWidget {
  const HeroWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, 
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          content(),
          image(),
          search(),
        ],
      ),
    );
  }

  Container content() {
    return Container(
      width: double.infinity,
      height: 210,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
      color: AppPallete.colorPrimaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/kucing.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Faldy',
                    style: GoogleFonts.poppins(
                      color: AppPallete.colorTextSecondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Ardiansyah',
                    style: GoogleFonts.poppins(
                      color: AppPallete.colorwhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 21),
          Text(
            'Get Your \n Secure Park',
            style: GoogleFonts.poppins(
              color: AppPallete.colorwhite,
              fontSize: 30,
              height: 1,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget image() {
    return Positioned(
      width: 160,
      right: 0,
      bottom: 75,
      child: Image.asset(
        'assets/images/car.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget search() {
    return Positioned(
      bottom: 0, 
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            )
          ]
        ),
        child: TextFormField(
          cursorColor: AppPallete.colorprimary,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppPallete.colorwhite,
            hintText: 'Search for parking location',
            hintStyle: GoogleFonts.poppins(
              color: AppPallete.colorgray,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: border(),
            focusedBorder: border(),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Image.asset(
                'assets/images/iconsearch.png',
                color: AppPallete.colorgray,
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide.none,
    );
  }
}