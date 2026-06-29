import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:parkcar_app/models/category.dart';
import 'package:parkcar_app/pages/detail_screen_page.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:parkcar_app/widgets/discover/container_widget.dart';
import 'package:parkcar_app/widgets/discover/stats_widget.dart';


class MoreWidget extends StatelessWidget {
  const MoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      actionText: 'View All',
      onActionTap: () {},
      title: 'Browse \n Categories',
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.vertical, 
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 16); 
        },
        itemBuilder: (BuildContext context, int index) {
          return MoreItem(category: categories[index]);
        },
      ),
    );
  }
}

class MoreItem extends StatelessWidget {
  final Category category;

  const MoreItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const DetailScreenPage());
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: AppPallete.colorwhite,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 76,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  image: AssetImage('assets/images/senayan.png'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded( 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    category.name,
                    style: GoogleFonts.poppins(
                      fontSize: 14, 
                      color: AppPallete.colorTextPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      StatsWidget(icon: 'assets/svgs/routing.svg', text: '1.2 km'),
                      const SizedBox(width: 12),
                      StatsWidget(icon: 'assets/svgs/dollar-circle.svg', text: 'Rp. 10.000'),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 14, color: Colors.amber),
                      const SizedBox(width: 2),
                      const Icon(Icons.star, size: 14, color: Colors.amber),
                      const SizedBox(width: 2),
                      const Icon(Icons.star, size: 14, color: Colors.amber),
                      const SizedBox(width: 2),
                      const Icon(Icons.star, size: 14, color: Colors.amber),
                      const SizedBox(width: 2),
                      const Icon(Icons.star_half, size: 14, color: Colors.amber),
                      const SizedBox(width: 6),
                      Text(
                        '4.5', 
                        style: GoogleFonts.poppins(
                          fontSize: 12, 
                          color: AppPallete.colorTextPrimary,
                          fontWeight: FontWeight.w500
                        )
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
}