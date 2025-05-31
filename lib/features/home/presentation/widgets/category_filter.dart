import 'package:artify/core/resources/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryFilter extends StatelessWidget {
  final List<String> categories = ['Trending', 'By Artist', 'ETH', 'BTC'];

  final int selectedIndex;
  final Function(int) onCategorySelected;

  CategoryFilter({
    super.key,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () => onCategorySelected(index),
              child: Container(
                height: 32,
                width: 84,
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.green : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: AppTextStyle.categoryFilter.copyWith(
                      color: isSelected ? AppColors.white : AppColors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
