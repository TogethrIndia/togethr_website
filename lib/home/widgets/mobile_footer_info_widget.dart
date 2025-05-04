import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_icons.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/main.dart';

class MobileFooterInfoWidget extends StatelessWidget {
  const MobileFooterInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Text(
                  AppStrings.faq,
                  style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                ),
                Text(
                  AppStrings.contactUs,
                  style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Image.asset(AppIcons.youtubeIcon, color: AppColors.textPrimary, height: 20, width: 20),
            Image.asset(AppIcons.instagramIcon, color: AppColors.textPrimary, height: 20, width: 20),
            Image.asset(AppIcons.linkedinIcon, color: AppColors.textPrimary, height: 20, width: 20),
            Image.asset(AppIcons.xIcon, color: AppColors.textPrimary, height: 20, width: 20)
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Text(
                  AppStrings.company,
                  style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                ),
                Text(
                  AppStrings.about,
                  style: semiBoldStyle400GalanoAlt(context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                ),
                Text(
                  AppStrings.careers,
                  style: semiBoldStyle400GalanoAlt(context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text(
                    AppStrings.legal,
                    style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                  ),
                  Text(
                    AppStrings.termsOfService,
                    style:
                        semiBoldStyle400GalanoAlt(context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                  ),
                  Text(
                    AppStrings.privacyPolicy,
                    style:
                        semiBoldStyle400GalanoAlt(context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
