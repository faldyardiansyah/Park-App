import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parkcar_app/pages/profile_page.dart';
import 'package:parkcar_app/pages/wallet_page.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:parkcar_app/controllers/navigation_controller.dart';
import 'package:parkcar_app/pages/discover_page.dart';
import 'package:parkcar_app/pages/my_booking_page.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navController = Get.put(NavigationController());

    final List<Widget> pages = [
      const DiscoverPage(),
      const MyBookingPage(),
      const WalletPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      body: Obx(() => IndexedStack(
            index: navController.currentIndex.value,
            children: pages,
          )),
      bottomNavigationBar: SafeArea(
        child: Obx(() => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppPallete.colorwhite,
              selectedItemColor: AppPallete.colorprimary,
              unselectedItemColor: AppPallete.colorgray,
              showUnselectedLabels: true,
              currentIndex: navController.currentIndex.value, // Ambil nilai dari GetX
              onTap: (index) {
                navController.changeIndex(index); // Panggil fungsi ganti halaman
              },
              selectedLabelStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              items: [
                _buildBottomNavigationBarItem('assets/svgs/grid.svg', 'Discover'),
                _buildBottomNavigationBarItem('assets/svgs/task.svg', 'My Bookings'),
                _buildBottomNavigationBarItem('assets/svgs/wallet.svg', 'Wallet'),
                _buildBottomNavigationBarItem('assets/svgs/setting.svg', 'Settings'),
              ],
            )),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(String iconPath, String label) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(iconPath),
      activeIcon: SvgPicture.asset(
        iconPath,
        colorFilter: const ColorFilter.mode(
          AppPallete.colorprimary,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}