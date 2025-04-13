import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';

class ChooseDatingAppWidget extends StatelessWidget {
  const ChooseDatingAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 80),
      color: AppColors.grey100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(AppStrings.whyChooseUs,
              style: boldStyleGalano(context: context, fontColor: AppColors.grey900, fontSize: 32)),
          const SizedBox(height: 24),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: AppStrings.whyChooseUsAnswer[0],
                  style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: " - ${AppStrings.whyChooseUsAnswer[1]}",
                  style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: " - ${AppStrings.whyChooseUsAnswer[2]}\n\n",
                  style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: "${AppStrings.whyChooseUsAnswer[3]} ",
                  style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: "${AppStrings.whyChooseUsAnswer[4]} ",
                  style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: "${AppStrings.whyChooseUsAnswer[5]}\n\n",
                  style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: "${AppStrings.whyChooseUsAnswer[6]} ",
                  style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: "${AppStrings.whyChooseUsAnswer[7]} ",
                  style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
                TextSpan(
                  text: AppStrings.whyChooseUsAnswer[8],
                  style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// whyChooseUs1
