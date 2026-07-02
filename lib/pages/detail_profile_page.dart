import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class DetailProfilePage extends StatelessWidget {
  const DetailProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppPallete.colorPrimaryDark,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: AppPallete.colorwhite),
        ),
        title: Text(
          'Detail Profile',
          style: GoogleFonts.poppins(
            color: AppPallete.colorwhite,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: AppPallete.colorwhite),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 32),
                decoration: BoxDecoration(
                  color: Color(0xFF1A1F2B),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppPallete.colorwhite,
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/kucing.jpg',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppPallete.colorwhite,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: AppPallete.colorPrimaryDark,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Faldy Ardiansyah',
                      style: GoogleFonts.poppins(
                        color: AppPallete.colorwhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'faldyardiansyah@example.com',
                          style: GoogleFonts.poppins(
                            color: AppPallete.colorwhite,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppPallete.colorprimary,
                          ),
                          child: const Icon(
                            Icons.star,
                            color: AppPallete.colorwhite,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Informasi Pribadi',
                  style: GoogleFonts.poppins(
                    color: AppPallete.colorPrimaryDark,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _buildPersonalInfo(
                'Nama',
                'Faldy Ardiansyah',
                Colors.blue[100]!,
                Icons.person,
              ),
              _buildPersonalInfo(
                'Email',
                'faldyardiansyah@gmail.com',
                Colors.blue[100]!,
                Icons.email,
              ),
              _buildPersonalInfo(
                'Nomor Telepon',
                '+62 812-3456-7890',
                Colors.blue[100]!,
                Icons.phone,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Keamanan',
                  style: GoogleFonts.poppins(
                    color: AppPallete.colorPrimaryDark,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _buildSecurityOption(
                'Ubah Kata Sandi',
                Icons.lock,
                const Icon(Icons.arrow_forward_ios),
              ),
              _buildSecurityOption(
                'Autentikasi Dua Faktor',
                Icons.security,
                Switch(
                  value: true,
                  onChanged: (bool value) {
                    // Handle switch toggle
                  },
                ),
              ),
              _buildSecurityOption(
                'Biometrik',
                Icons.fingerprint,
                Switch(
                  value: false,
                  onChanged: (bool value) {
                    // Handle switch toggle
                  },
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Pengaturan Lainnya',
                  style: GoogleFonts.poppins(
                    color: AppPallete.colorPrimaryDark,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              _SettingOption(
                'Bahasa',
                Icons.language,
                () {
                  // Handle tap event for this setting
                },
                trailingIcon: const Icon(Icons.arrow_forward_ios),
              ),
              _SettingOption(
                'Keuangan',
                Icons.attach_money,
                () {
                  // Handle tap event for this settingan
                },
                trailingIcon: const Icon(Icons.arrow_forward_ios),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle logout action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppPallete.colorwhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.logout, color: Colors.red),
                      const SizedBox(width: 8),
                      Text(
                        'Keluar',
                        style: GoogleFonts.poppins(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            // Handle save changes action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppPallete.colorprimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text(
            'Simpan Perubahan',
            style: GoogleFonts.poppins(
              color: AppPallete.colorwhite,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),   
    );
  }
}

Widget _buildPersonalInfo(
  String title,
  String subtitle,
  Color bgicon,
  IconData icon,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.colorwhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(shape: BoxShape.circle, color: bgicon),
            child: Icon(icon, color: AppPallete.colorprimary, size: 24),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: AppPallete.colorTextSecondary,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  color: AppPallete.colorPrimaryDark,
                  fontSize: 16,
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

Widget _buildSecurityOption(String title, IconData icon, Widget? trailingIcon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Container(
      height: 80,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.colorwhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100]!,
            ),
            child: Icon(icon, color: AppPallete.colorprimary, size: 24),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: GoogleFonts.poppins(
              color: AppPallete.colorPrimaryDark,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          if (trailingIcon != null) trailingIcon,
        ],
      ),
    ),
  );
}

Widget _SettingOption(String title, IconData icon, VoidCallback onTap, {Widget? trailingIcon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Container(
      height: 80,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.colorwhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: AppPallete.colorprimary),
          const SizedBox(width: 16),
          Text(
            title,
            style: GoogleFonts.poppins(
              color: AppPallete.colorPrimaryDark,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          if (trailingIcon != null) trailingIcon,
        ],
      ),
    ),
  );
}