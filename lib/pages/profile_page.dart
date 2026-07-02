import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/models/profile.dart';
import 'package:parkcar_app/pages/detail_profile_page.dart';
import 'package:parkcar_app/theme/app_pallete.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppPallete.colorPrimaryDark,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: const AssetImage('assets/images/kucing.jpg'),
          ),
        ),
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: AppPallete.colorwhite,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: AppPallete.colorwhite,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderCustom(),
            Transform.translate(
              offset: const Offset(0, -20),
              child: buildMenuCard(groupOne),
            ),
            buildMenuCard(groupTwo),
            buildMenuCard(groupThere),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppPallete.colorPrimaryDark,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.logout, color: AppPallete.colorwhite),
                  label: Text(
                    'Logout',
                    style: GoogleFonts.poppins(
                      color: AppPallete.colorwhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Version 1.0.0",
              style: TextStyle(color: AppPallete.colorTextSecondary),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeaderCustom() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
    decoration: BoxDecoration(
      color: AppPallete.colorPrimaryDark,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 100,
              width: 80,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Color(0xFF38BDF8),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/kucing.jpg'),
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppPallete.colorwhite,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.edit, color: AppPallete.colorPrimaryDark),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'Faldy Ardiansyah',
          style: GoogleFonts.poppins(
            color: AppPallete.colorwhite,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'faldyardiansyah3@gmail.com',
          style: GoogleFonts.poppins(
            color: AppPallete.colorTextSecondary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.verified_user_rounded,
                color: Color(0xFF818CF8),
                size: 16,
              ),
              const SizedBox(width: 6),
              Text(
                'PREMIUM MEMBER',
                style: GoogleFonts.poppins(
                  color: const Color(0xFFC7D2FE),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildMenuCard(List<Profile> items) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            leading: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: item.backgroundColor.withOpacity(.15),
                shape: BoxShape.circle,
              ),
              child: Icon(item.iconPath, color: item.iconColor),
            ),
            title: Text(item.title),
            subtitle: Text(item.subtitle),
            trailing: const Icon(Icons.chevron_right),
            onTap: item.onTap,
          );
        },
      ),
    ),
  );
}
