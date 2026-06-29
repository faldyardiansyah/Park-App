import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_app/models/category.dart';
import 'package:parkcar_app/theme/app_pallete.dart';
import 'package:parkcar_app/widgets/discover/container_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      actionText: 'View All',
      onActionTap: () {},
      title: 'Browse \n Categories',
      child: SizedBox(
        height: 110,
        child: ListView.separated(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 16);
          },
          itemBuilder: (BuildContext context, int index) {
            return CartegoriesItem(category: categories[index]);
          },
        ),
      ),
    );
  }
}

class CartegoriesItem extends StatelessWidget {
  final Category category;

  const CartegoriesItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.colorwhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(category.icon, height: 50, width: 50,),
          const SizedBox(height: 8),
          Text(category.name, style: GoogleFonts.poppins(fontSize: 12, color: AppPallete.colorTextPrimary, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  
}
