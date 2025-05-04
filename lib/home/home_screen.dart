// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/home/widgets/choose_dating_app_widget.dart';
import 'package:togethr_website/home/widgets/features_that_work_for_you_widget.dart';
import 'package:togethr_website/home/widgets/home_footer_widget.dart';
import 'package:togethr_website/home/widgets/home_header_widget.dart';
import 'package:togethr_website/home/widgets/where_love_begins_widget.dart';
import 'package:togethr_website/main.dart';
import 'package:togethr_website/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Key to let the body extend behind the AppBar

      appBar: isMobileView
          ? PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight + 40), // total height = toolbar + padding

              child: Column(
                children: [
                  const SizedBox(height: 32), // pushes the AppBar down
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.white, size: 28),
                        onPressed: () => Utils.showHomeDrawer(context),
                      ),
                    ],
                  ),
                ],
              ))
          : AppBar(
              backgroundColor: Colors.transparent,
            ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderWidget(),
            ChooseDatingAppWidget(),
            FeaturesThatWorkForYouWidget(),
            WhereLoveBeginsWidget(),
            HomeFooterWidget(),
          ],
        ),
      ),
    );
  }
}
