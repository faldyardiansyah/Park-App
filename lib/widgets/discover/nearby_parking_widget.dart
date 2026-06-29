import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/models/park.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:parkcar_app/widgets/discover/container_widget.dart';
import 'package:parkcar_app/widgets/discover/stats_widget.dart';

class NearbyParkingWidget extends StatelessWidget {
  const NearbyParkingWidget({super.key});

  @override

  Widget build(BuildContext context) {
    return ContainerWidget(
      actionText: 'View All',
      onActionTap: () {},
      title: 'Nearby \n Parking Spots',
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          itemCount: parks.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 16);
          },
          itemBuilder: (BuildContext context, int index) {
            return NearbyParkingItem(park: parks[index]);
          },
        ),
      ),
    );
  }
}

class NearbyParkingItem extends StatelessWidget {
  final Park park;

  const NearbyParkingItem({super.key, required this.park});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.colorwhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          const SizedBox(height: 10),
          content(),
        ],
      ),
    );
  }

  Column content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          park.title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppPallete.colorTextPrimary,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatsWidget(icon: 'assets/svgs/routing.svg', text: park.distance),
              StatsWidget(
                icon: 'assets/svgs/dollar-circle.svg',
                text: park.price,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container image() {
    return Container(
      height: 100,
      width: 170,
      padding: const EdgeInsets.all(16),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: AssetImage(park.image),
          fit: BoxFit.cover,
        ),
      ),
      child: park.typeText != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: park.type == ParkType.discount
                    ? Colors.red
                    : Colors.blue,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                park.typeText!,
                style: GoogleFonts.poppins(
                  color: AppPallete.colorwhite,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
