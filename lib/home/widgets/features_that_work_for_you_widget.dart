import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_constants.dart';
import 'package:togethr_website/constants/app_icons.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/main.dart';

class FeaturesThatWorkForYouWidget extends StatelessWidget {
  const FeaturesThatWorkForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobileView ? 16 : 150),
      child: Column(
        children: [
          const SizedBox(height: 80),
          Text(
            AppStrings.featureWorks,
            style: boldStyleGalano(
              context: context,
              fontColor: AppColors.grey900,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 12),
              itemCount: AppConstants.featuresMap.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobileView ? 1 : 3, mainAxisExtent: 450, crossAxisSpacing: 24, mainAxisSpacing: 24),
              itemBuilder: (context, index) {
                final String icon = AppConstants.featuresMap[index][0];
                final String title = AppConstants.featuresMap[index][1];
                final String description = AppConstants.featuresMap[index][2];

                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.grey200),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: isMobileView ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                    children: [
                      Image.asset(icon, height: 250, width: double.infinity, fit: isMobileView ? BoxFit.fill : null),
                      const SizedBox(height: 24),
                      Text(title,
                          style: semiBoldStyle600Galano(context: context, fontSize: 18, fontColor: AppColors.grey900)),
                      const SizedBox(height: 12),
                      Text(description,
                          style: semiBoldStyle400Galano(context: context, fontSize: 16, fontColor: AppColors.grey700)),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
