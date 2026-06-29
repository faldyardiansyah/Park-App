import 'package:flutter/material.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:parkcar_app/widgets/discover/categories_widget.dart';
import 'package:parkcar_app/widgets/discover/hero_widget.dart';
import 'package:parkcar_app/widgets/discover/in_progress_widget.dart';
import 'package:parkcar_app/widgets/discover/more_widget.dart';
import 'package:parkcar_app/widgets/discover/nearby_parking_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppPallete.colorwhite, // Pastikan warna background bersih
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidgets(),
            const SizedBox(height: 16),
            InProgressWidget(),
            const SizedBox(height: 20),
            NearbyParkingWidget(),
            const SizedBox(height: 20),
            CategoriesWidget(),
            const SizedBox(height: 20),
            MoreWidget(),
          ],
        ),
      ),
    );
  }
}
