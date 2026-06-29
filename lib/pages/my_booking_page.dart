import 'package:flutter/material.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/widgets/bookings/booking_filter_tabs_widget.dart';
import 'package:parkcar_app/widgets/bookings/booking_list_widget.dart';

class MyBookingPage extends StatelessWidget {
  const MyBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding : const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppPallete.colorPrimaryDark,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Parking Orders', style: GoogleFonts.poppins(color: AppPallete.colorwhite, fontSize: 24, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    Text('Manage your parking orders', style: GoogleFonts.poppins(color: AppPallete.colorTextSecondary, fontSize: 16,),)
                  ],
                ),
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppPallete.colorwhite,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    color: AppPallete.colorTextPrimary,
                  ),
                )
              ],
              ),
            ),
            BookingFilterTabsWidget(),
            Expanded(child: BookingListWidget(),),
          ],
        )
      ),
    );
  }
}