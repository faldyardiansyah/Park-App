import 'package:flutter/material.dart';
import 'package:parkcar_app/pages/discover_page.dart';
import 'package:parkcar_app/pages/main_navigation.dart';
import 'package:parkcar_app/pages/my_booking_page.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:dotted_line/dotted_line.dart';

class SuccessPaymentScreenPage extends StatelessWidget {
  const SuccessPaymentScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppPallete.colorwhite,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: AppPallete.colorprimary),
        ),
        title: Text(
          'Pembayaran Berhasil',
          style: GoogleFonts.poppins(
            color: AppPallete.colorprimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: AppPallete.colorprimary,
                    size: 100,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Pembayaran Berhasil!',
                    style: GoogleFonts.poppins(
                      color: AppPallete.colorprimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Tempat parkir Anda telah berhasil dibayar. Silakan cek detail pemesanan Anda di halaman "My Parking Orders".',
                    style: GoogleFonts.poppins(
                      color: AppPallete.colorTextSecondary,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            _buildBookingId(),
            const SizedBox(height: 20),
            _buildBottomView(
              'Lihat Detail Pemesanan',
              () => Get.offAll(() => MainNavigation()),
              AppPallete.colorprimary,
            ),
            const SizedBox(height: 20),
            _buildBottomView(
              'Kembali ke Beranda',
              () => Get.offAll(() => DiscoverPage()),
              AppPallete.colorTextSecondary,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildBookingId() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppPallete.colorwhite,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Booking ID:',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                ),
              ),
              Text(
                '#123456789',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorprimary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tempat Parkir:',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                ),
              ),
              Text(
                'Faldy Parking Lot',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Metode Pembayaran:',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                ),
              ),
              Text(
                'Transfer Bank',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tanggal Pembayaran:',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                ),
              ),
              Text(
                '12 juli 2026',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                'Durasi Parkir:',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                '2 jam',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          DottedLine(
            dashLength: 4,
            dashGapLength: 4,
            lineThickness: 1,
            dashColor: AppPallete.colorTextSecondary.withOpacity(0.5),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Pembayaran:',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                ),
              ),
              Text(
                'Rp 50.000',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorprimary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildBottomView(String title, VoidCallback? onTap, Color bgColor) {
  return ElevatedButton(
    onPressed: onTap ?? () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
    child: Center(
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: AppPallete.colorwhite,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
