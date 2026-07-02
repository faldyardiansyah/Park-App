import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/pages/success_payment_screen_page.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class PaymentScreenPage extends StatelessWidget {
  const PaymentScreenPage({super.key});

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
          'Metode Pembayaran',
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Metode Pembayaran',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tambah Metode',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppPallete.colorprimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    _buildPayment(
                      Icons.credit_card,
                      Colors.white,
                      const Color(0xFF2F54F6),
                      'Kartu Kredit',
                      'Bayar dengan kartu kredit',
                      true,
                    ),
                    _buildPayment(
                      Icons.account_balance_wallet,
                      Colors.white,
                      const Color(0xFFFF4D4F),
                      'E-Wallet',
                      'Bayar dengan e-wallet',
                      false,
                    ),
                    _buildPayment(
                      Icons.money,
                      Colors.white,
                      const Color(0xFF52C41A),
                      'Tunai',
                      'Bayar dengan uang tunai',
                      false,
                    ),
                    _buildPayment(
                      Icons.payment_rounded,
                      Colors.white,
                      const Color(0xFFFF4D4F),
                      'Google Play',
                      'Bayar dengan Google Play',
                      false,
                    ),
                    _buildPayment(
                      Icons.account_balance,
                      Colors.white,
                      const Color(0xFF2F54F6),
                      'Transfer Bank',
                      'Bayar dengan Transfer Bank',
                      false,
                    ),
                  ],
                ),
                _buildPaymentDetails(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            print('Bayar Sekarang clicked!');
            Get.to(()=> const SuccessPaymentScreenPage());
            Get.snackbar(
              'Pembayaran Berhasil',
              'Terima kasih telah melakukan pembayaran.',
              snackPosition: SnackPosition.TOP,
              duration: const Duration(seconds: 1),
              backgroundColor: AppPallete.colorprimary,
              colorText: Colors.white,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppPallete.colorprimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bayar Sekarang',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Order Sekarang',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'A-12 (Floor 1)',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.colorprimary,
                  ),
                ),
                const SizedBox(height: 8),

                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 14,
                      color: AppPallete.colorprimary,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Jl. Kebon Jeruk, Jakarta Barat',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow
                            .ellipsis, // Kalau kepanjangan otomatis jadi titik-titik (...)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),
          Material(
            color: AppPallete.colorprimary,
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () {
                print('Premium Slot clicked!');
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Premium Slot',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildPayment(
  IconData icon,
  Color iconColor,
  Color bgColor,
  String title,
  String subtitle,
  bool isSelected,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? null : Colors.white,
        gradient: isSelected
            ? LinearGradient(
                colors: [
                  const Color(0xFF2F54F6).withOpacity(0.06),
                  const Color(0xFFEEF2FF).withOpacity(0.2),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isSelected ? AppPallete.colorprimary : Colors.grey[300]!,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          if (isSelected)
            const Icon(
              Icons.check_circle,
              color: AppPallete.colorprimary,
              size: 20,
            )
          else
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey[400]!, width: 1),
              ),
            ),
        ],
      ),
    ),
  );
}

Widget _buildPaymentDetails() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.colorprimary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detail Pembayaran',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppPallete.colorPrimaryDark,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Harga',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppPallete.colorPrimaryDark,
                ),
              ),
              Text(
                'Rp. 20.000',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppPallete.colorPrimaryDark,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Denda',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppPallete.colorPrimaryDark,
                ),
              ),
              Text(
                'Rp. 0',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppPallete.colorPrimaryDark,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Divider(color: AppPallete.colorPrimaryDark),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Pembayaran',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppPallete.colorPrimaryDark,
                ),
              ),
              Text(
                'Rp. 20.000',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppPallete.colorPrimaryDark,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
