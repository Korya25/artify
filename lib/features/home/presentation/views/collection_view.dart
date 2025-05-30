import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:artify/core/const/app_assets.dart';
import 'package:artify/core/const/app_text_style.dart';
import 'package:artify/core/resources/app_colors.dart';
import 'package:artify/features/home/presentation/views/banner_section.dart';
import 'package:artify/features/home/presentation/views/dateail_screen.dart';
import 'package:artify/features/home/presentation/views/watch_list_section.dart';
import 'package:artify/features/home/presentation/widgets/detail_header.dart';
import 'package:artify/features/onboarding/presentation/widgets/fade_out_image.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Gap(40),
              DetailHeader(title: 'Collection'),
              Gap(30),
              CollectionViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionViewBody extends StatelessWidget {
  const CollectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const SizedBox(
            height: 378,
            width: 311,
            child: Column(
              children: [
                BannerSection(),
                Gap(8),
                DetailsSection(),
                Gap(16),
                WatchlistSection(),
              ],
            ),
          ),
          const Gap(24),

          // Tab Bar
          TabBar(
            indicatorColor: AppColors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,

            unselectedLabelColor: Colors.grey,
            tabs: const [Tab(text: "Item’s"), Tab(text: "Activity")],
          ),
          const Gap(24),

          // Tab Content
          const SizedBox(
            height: 450,
            child: TabBarView(
              children: [
                ItemsGridView(),
                Center(child: Text("No activity yet")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"image": AppImages.object2, "tag": "#14415", "name": "Hypebeast Apes B"},
      {"image": AppImages.object3, "tag": "#15315", "name": "Hypebeast Apes D"},
      {"image": AppImages.object4, "tag": "#22222", "name": "Hypebeast Apes A"},
      {"image": AppImages.object5, "tag": "#72277", "name": "Hypebeast Apes Z"},
    ];

    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return NFTItemCard(
          imagePath: item['image']!,
          tag: item['tag']!,
          name: item['name']!,
        );
      },
    );
  }
}

class NFTItemCard extends StatelessWidget {
  final String imagePath;
  final String tag;
  final String name;

  const NFTItemCard({
    super.key,
    required this.imagePath,
    required this.tag,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeOutImage(
          imageWidget: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              imagePath,
              height: 209,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tag,
                style: AppTextStyle.skipButton.copyWith(
                  fontSize: 12,
                  color: AppColors.green,
                ),
              ),
              const Gap(4),
              Text(
                name,
                style: AppTextStyle.skipButton.copyWith(
                  fontSize: 12,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
