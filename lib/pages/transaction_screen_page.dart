import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/pages/payment_screen_page.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class TransactionScreenPage extends StatelessWidget {
  const TransactionScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    String lantaiAktif = 'Lantai 1';
    String slotTerpilih = 'A-12';
    List<String> slotPenuh = ['A-1', 'A-4', 'A-10', 'B-2'];
    final List<String> daftarSlot = [
      'A-1',
      'A-10',
      'B-1',
      'A-2',
      'A-11',
      'B-2',
      'A-3',
      'A-12',
      'B-3',
      'A-4',
      'A-13',
      'B-4',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPallete.colorwhite,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: AppPallete.colorprimary),
        ),
        title: Text(
          'Pilih Tempat Parkir',
          style: GoogleFonts.poppins(
            color: AppPallete.colorprimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 280),
            child: Column(
              children: [
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildItem('Lantai 1', lantaiAktif),
                      _buildItem('Lantai 2', lantaiAktif),
                      _buildItem('Lantai 3', lantaiAktif),
                      _buildItem('Lantai 4', lantaiAktif),
                      _buildItem('Lantai 5', lantaiAktif),
                      _buildItem('Lantai 6', lantaiAktif),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildIndicator(
                        Icons.crop_din_rounded,
                        'Tersedia',
                        AppPallete.colorwhite,
                      ),
                      _buildIndicator(Icons.square, 'Terisi', AppPallete.colorgray),
                      _buildIndicator(
                        Icons.square,
                        'Dipilih',
                        AppPallete.colorprimary,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppPallete.colorwhite,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xFFE0E0E0).withOpacity(0.5),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Masuk',
                              style: GoogleFonts.poppins(
                                color: AppPallete.colorTextPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Keluar',
                              style: GoogleFonts.poppins(
                                color: AppPallete.colorTextPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: daftarSlot.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                childAspectRatio: 1.1,
                              ),
                          itemBuilder: (context, index) {
                            String namaSlot = daftarSlot[index];

                            // Cek status slot saat ini
                            bool isPenuh = slotPenuh.contains(namaSlot);
                            bool isDipilih = slotTerpilih == namaSlot;

                            return _buildKotakSlot(namaSlot, isPenuh, isDipilih);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Container(
                    padding : const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color : AppPallete.colorwhite.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xFFE0E0E0).withOpacity(0.5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppPallete.colorprimary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child : Icon(Icons.energy_savings_leaf_outlined, color: AppPallete.colorprimary, size: 16,),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Slot Premium Access', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: AppPallete.colorTextPrimary),),
                            const SizedBox(height: 4),
                            Text('A-12 Tesedia Fast Charging & Security', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: AppPallete.colorTextPrimary),),
                          ]
                        )
                      ]
                    ),
                  )
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildBottomPanel(slotTerpilih, lantaiAktif),
          ),
        ],
      ),
    );
  }
}

Widget _buildItem(String title, String lantaiAktif) {
  bool isSelected = lantaiAktif == title;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? AppPallete.colorprimary : AppPallete.colorwhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE0E0E0).withOpacity(0.5)),
      ),
      child: Text(
        'title',
        style: GoogleFonts.poppins(
          color: isSelected
              ? AppPallete.colorwhite
              : AppPallete.colorTextPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

Widget _buildIndicator(IconData icon, String label, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 8),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget _buildKotakSlot(String namaSlot, bool isPenuh, bool isDipilih) {
  Color colorBg = Colors.white;
  Color colorTeks = AppPallete.colorTextPrimary;

  if (isPenuh) {
    colorBg = const Color(0xFFE2E8F0);
    colorTeks = Colors.grey[400]!;
  } else if (isDipilih) {
    colorBg = AppPallete.colorprimary;
    colorTeks = Colors.white;
  }

  return Container(
    decoration: BoxDecoration(
      color: colorBg,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: isDipilih || isPenuh
            ? Colors.transparent
            : const Color(0xFFE0E0E0),
      ),
    ),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isDipilih)
          const Icon(Icons.check_circle, color: Colors.white, size: 14),
        if (isDipilih) const SizedBox(height: 4),
        Text(
          namaSlot,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: colorTeks,
          ),
        ),
      ],
    ),
  );
}

Widget _buildBottomPanel(String slot, String lantai) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Slot Terpilih',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      '$slot ($lantai)',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppPallete.colorTextPrimary,
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Harga Total',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'Rp10.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: AppPallete.colorprimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=> PaymentScreenPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppPallete.colorprimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.payment, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      'Pilih Metode Pembayaran',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
