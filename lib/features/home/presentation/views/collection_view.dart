import 'package:artify/features/home/presentation/views/banner_section.dart';
import 'package:artify/features/home/presentation/views/dateail_screen.dart';
import 'package:artify/features/home/presentation/views/watch_list_section.dart';
import 'package:artify/features/home/presentation/widgets/detail_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: const [
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
    return Column(
      children: const [
        SizedBox(
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
      ],
    );
  }
}
