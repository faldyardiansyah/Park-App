import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/pages/transaction_screen_page.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class DetailScreenPage extends StatelessWidget {
  const DetailScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF8F9FB),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
        ),
        title: Text(
          'Park lot',
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeroHeader(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoCard(Icons.route, '1.2 km', 'Jarak'),
                          _buildInfoCard(Icons.lock_clock, '24/7', 'Jam Buka'),
                          _buildInfoCard(Icons.park, '193MB', 'Lantai'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Tentang Parkir',
                        style: GoogleFonts.poppins(
                          color: AppPallete.colorTextPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: GoogleFonts.poppins(
                          color: AppPallete.colorTextSecondary,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Text(
                            'Fasilitas',
                            style: GoogleFonts.poppins(
                              color: AppPallete.colorTextPrimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Lihat semua',
                            style: GoogleFonts.poppins(
                              color: AppPallete.colorprimary,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(child: _buildMoreItem(Icons.wifi, 'Wifi')),
                          const SizedBox(width: 8),
                          Expanded(child: _buildMoreItem(Icons.wifi, 'Wifi')),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(child: _buildMoreItem(Icons.wifi, 'Wifi')),
                          const SizedBox(width: 8),
                          Expanded(child: _buildMoreItem(Icons.wifi, 'Wifi')),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Lokasi',
                        style: GoogleFonts.poppins(
                          color: AppPallete.colorTextPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildLocation(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildBottomBooking(),
          ),
        ],
      ),
    );
  }
}

Widget _buildHeroHeader() {
  return Container(
    height: 250,
    margin: const EdgeInsets.symmetric(horizontal: 16),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/senayan.png', fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.1)],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2F54F6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Verified Premium',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Angga Tower Lot',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.white),
                    const SizedBox(width: 4),
                    Text(
                      'Jl. Senayan Barat 1 No. 1',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.star, color: Colors.white),
                    const SizedBox(width: 4),
                    Text(
                      '4.8 (26, review)',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildInfoCard(IconData icon, String label, String value) {
  return Container(
    width: 105,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: AppPallete.colorwhite,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: const Color(0xFFE0E0E0).withOpacity(0.5)),
    ),
    child: Column(
      children: [
        Icon(icon, color: AppPallete.colorprimary, size: 30),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextPrimary,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextSecondary,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}

Widget _buildMoreItem(IconData icon, String label) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: const Color(0xFFEEF2FF).withOpacity(0.5),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: AppPallete.colorprimary),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextPrimary,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget _buildLocation() {
  return Container(
    height: 160,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppPallete.colorwhite,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: const Color(0xFFE0E0E0).withOpacity(0.5)),
      image: const DecorationImage(
        image: AssetImage('assets/images/senayan.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          bottom: 12,
          right: 12,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.location_on, color: AppPallete.colorprimary),
                const SizedBox(width: 8),
                Text(
                  'Buka Maps',
                  style: GoogleFonts.poppins(
                    color: AppPallete.colorTextPrimary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildBottomBooking() {
  return SafeArea(
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Harga",
                  style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Rp10.000",
                        style: GoogleFonts.poppins(
                          color: AppPallete.colorprimary,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " /jam",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Tombol kanan
          SizedBox(
            width: 170,
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPallete.colorprimary,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: () {
                Get.to(()=> TransactionScreenPage());
              },
              child: Text(
                "Pesan Sekarang",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
