import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:parkcar_app/widgets/discover/button_widget.dart';
import 'package:parkcar_app/widgets/discover/container_widget.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "In Progress Parking to",
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: AppPallete.colorprimary,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: AppPallete.colorprimary.withOpacity(0.4),
              blurRadius: 24,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/svgs/grid.svg', height: 28, width: 28, color: AppPallete.colorwhite,),
            const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Faldy Ardiansyah', style: GoogleFonts.poppins(
                color: AppPallete.colorwhite,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
              Text('Lot 200MB', style: GoogleFonts.poppins(
                color: AppPallete.colorwhite,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ))
            ],
          ),
          Spacer(),
          ButtonWidget(text: 'Open Maps', onTap:() {},),
          ],
        )
      ),
    );
  }
}
