import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/models/wallet.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppPallete.colorPrimaryDark,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: AppPallete.colorwhite),
        ),
        title: Text(
          'Wallet Page',
          style: GoogleFonts.poppins(
            color: AppPallete.colorwhite,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: AppPallete.colorwhite,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          _buildDigitalCard(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ), // Jarak aman dari tepi layar
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Menyebarkan menu secara merata
              children: [
                _buildItemList(Icons.account_balance_wallet_outlined, 'Top Up'),
                _buildItemList(Icons.mobile_friendly_outlined, 'Transfer'),
                _buildItemList(Icons.history_outlined, 'History'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          _buildTransactions(),
        ],
      ),
    );
  }
}

Widget _buildDigitalCard() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2F54F6), Color(0xFF7E30E1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 4,
            offset: const Offset(0, 2),
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
                'Stich Bank Digital',
                style: GoogleFonts.poppins(
                  color: AppPallete.colorwhite,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: AppPallete.colorwhite.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: AppPallete.colorwhite.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            width: 40,
            height: 24,
            decoration: BoxDecoration(
              color: AppPallete.colorwhite.withOpacity(0.25),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Transform.translate(
            offset: const Offset(10, -20),
            child: Container(
              width: 22,
              height: 15,
              decoration: BoxDecoration(
                color: AppPallete.colorwhite.withOpacity(0.25),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '*** 1234',
            style: GoogleFonts.poppins(
              color: AppPallete.colorwhite,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Total Uang',
            style: GoogleFonts.poppins(
              color: AppPallete.colorwhite.withOpacity(0.5),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Rp 10.000.000',
            style: GoogleFonts.poppins(
              color: AppPallete.colorwhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildItemList(IconData icon, String label) {
  // gunanya buat jarak antar icon
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: Column(
      // Menyinkronkan ikon dan teks agar sejajar di tengah (center)
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          width: 60, // Sedikit diperbesar agar ikon size 30 tidak sesak
          height: 60,
          decoration: BoxDecoration(
            color: AppPallete.colorwhite,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(icon, color: Colors.blue, size: 35),
        ),
        // Memberikan jarak vertikal antara ikon dan teks di bawahnya
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextSecondary,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget _buildTransactions() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          children: [
            Text(
              'Transactions',
              style: GoogleFonts.poppins(
                color: AppPallete.colorTextPrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              'See all',
              style: GoogleFonts.poppins(color: Colors.blue, fontSize: 14),
            ),
          ],
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        itemCount: wallets.length,
        itemBuilder: (context, index) {
          final wallet = wallets[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: wallet.contentColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: wallet.iconData != null
                      ? Icon(
                          wallet.iconData,
                          color: wallet.contentColor,
                          size: 22,
                        )
                      : Text(
                          wallet.iconText ?? '',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: wallet.contentColor,
                          ),
                        ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        wallet.title,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppPallete.colorTextPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        wallet.date,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),

                // 3. Bagian Kanan: Harga & Indikator Panah di bawahnya
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      wallet.amount,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: wallet.isTopup
                            ? const Color(0xFF2F54F6) // Biru jika positif
                            : wallet.contentColor,    // Merah jika negatif
                      ),
                    ),
                    const SizedBox(height: 2),
                    Icon(
                      wallet.isTopup
                          ? Icons.north_east_rounded // Panah miring ke atas
                          : Icons.south_west_rounded, // Panah miring ke bawah
                      size: 14,
                      color: wallet.isTopup
                          ? const Color(0xFF2F54F6)
                          : wallet.contentColor,
                    ),
                  ],
                  ),
              ],
            ),
          );
        },
      ),
    ],
  );
}
