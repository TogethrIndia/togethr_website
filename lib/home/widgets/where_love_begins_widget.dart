import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/home/widgets/where_love_begins_item_widget.dart';

class WhereLoveBeginsWidget extends StatelessWidget {
  const WhereLoveBeginsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      color: AppColors.grey100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Text(
            AppStrings.whereLoveBegins,
            style: boldStyleGalano(
              context: context,
              fontColor: AppColors.grey900,
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(AppStrings.whereLoveBeginsTestimonials.length, (index) {
              final Map<String, String> item = AppStrings.whereLoveBeginsTestimonials[index];
              return WhereLoveBeginsItemWidget(
                title: item[AppStrings.title] ?? '',
                description: item[AppStrings.description] ?? '',
                name: item[AppStrings.name] ?? '',
                picPath: "assets/icons/fake_women.png",
              );
            }),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
