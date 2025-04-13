import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/home/widgets/choose_dating_app_widget.dart';
import 'package:togethr_website/home/widgets/home_footer_widget.dart';
import 'package:togethr_website/home/widgets/home_header_widget.dart';
import 'package:togethr_website/home/widgets/where_love_begins_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderWidget(),
            ChooseDatingAppWidget(),
            WhereLoveBeginsWidget(),
            HomeFooterWidget(),
          ],
        ),
      ),
    );
  }
}
