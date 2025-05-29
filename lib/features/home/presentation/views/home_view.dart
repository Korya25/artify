import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/resources/app_routes.dart';
import 'package:artify/features/home/presentation/widgets/best_artist_card.dart';
import 'package:artify/features/home/presentation/widgets/category_filter.dart';
import 'package:artify/features/home/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:artify/features/home/presentation/widgets/header_home_title.dart';
import 'package:artify/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  int selectedCategory = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() => _selectedIndex = index),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                height: 72,
                width: double.infinity,
                child: HeaderHomeTitle(),
              ),
            ),
            const Gap(20),
            CategorySection(
              selectedIndex: selectedCategory,
              onCategorySelected:
                  (index) => setState(() => selectedCategory = index),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () {
                context.goNamed(AppRoutes.detail);
              },
              child: ProductCard(
                image: AppImages.object1,
                title: 'Hypebeast Apes',
                timeLeft: '1h 23m 32s',
                bid: '2.23 ETH',
                onBidPressed: () {},
              ),
            ),
            const Gap(30),
            const BestArtistCard(),
          ],
        ),
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;

  const CategorySection({
    super.key,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CategoryFilter(
        selectedIndex: selectedIndex,
        onCategorySelected: onCategorySelected,
      ),
    );
  }
}
