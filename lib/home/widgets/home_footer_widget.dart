import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_constants.dart';
import 'package:togethr_website/constants/app_icons.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/home/widgets/mobile_footer_info_widget.dart';
import 'package:togethr_website/main.dart';
import 'package:togethr_website/widgets/custom_button.dart';

class HomeFooterWidget extends StatelessWidget {
  const HomeFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobileView ? 16 : 158),
      child: Column(
        children: [
          const SizedBox(height: 40),
          if (isMobileView) ...[
            SizedBox(
              height: 48,
              width: double.infinity,
              child: CustomButton(
                color: AppColors.primary,
                borderColor: AppColors.primary,
                text: AppStrings.joinNow,
                textStyle: semiBoldStyle600Galano(
                  context: context,
                  fontColor: AppColors.grey100,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 60),
          ],
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image.asset(
                  AppIcons.togethrPrimaryLogo,
                  height: 40,
                ),
                const SizedBox(height: 8),
                Text(
                  AppStrings.heroText,
                  style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
                )
              ]),
              const Spacer(),
              if (!isMobileView)
                SizedBox(
                  height: 48,
                  width: 200,
                  child: CustomButton(
                    color: AppColors.primary,
                    borderColor: AppColors.primary,
                    text: AppStrings.joinNow,
                    textStyle: semiBoldStyle600Galano(
                      context: context,
                      fontColor: AppColors.grey100,
                      fontSize: 16,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(
                Icons.email,
                size: 15,
                color: AppColors.grey900,
              ),
              const SizedBox(width: 4),
              Text(
                AppConstants.togethrEmail,
                style: semiBoldStyle500GalanoAlt(context: context, fontColor: AppColors.grey900, fontSize: 16),
              )
            ],
          ),
          const SizedBox(height: 40),
          const Divider(color: AppColors.grey200),
          const SizedBox(height: 40),
          isMobileView
              ? const MobileFooterInfoWidget()
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 24,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppIcons.youtubeIcon, color: AppColors.textPrimary, height: 20, width: 20),
                        Image.asset(AppIcons.instagramIcon, color: AppColors.textPrimary, height: 20, width: 20),
                        Image.asset(AppIcons.linkedinIcon, color: AppColors.textPrimary, height: 20, width: 20),
                        Image.asset(AppIcons.xIcon, color: AppColors.textPrimary, height: 20, width: 20)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        Text(
                          AppStrings.faq,
                          style: semiBoldStyle600GalanoAlt(
                              context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                        ),
                        Text(
                          AppStrings.contactUs,
                          style: semiBoldStyle600GalanoAlt(
                              context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        Text(
                          AppStrings.company,
                          style: semiBoldStyle600GalanoAlt(
                              context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                        ),
                        Text(
                          AppStrings.contactUs,
                          style: semiBoldStyle400GalanoAlt(
                              context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                        ),
                        Text(
                          AppStrings.careers,
                          style: semiBoldStyle400GalanoAlt(
                              context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        Text(
                          AppStrings.legal,
                          style: semiBoldStyle600GalanoAlt(
                              context: context, fontColor: AppColors.textPrimary, fontSize: 14),
                        ),
                        Text(
                          AppStrings.termsOfService,
                          style: semiBoldStyle400GalanoAlt(
                              context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                        ),
                        Text(
                          AppStrings.privacyPolicy,
                          style: semiBoldStyle400GalanoAlt(
                              context: context, fontColor: AppColors.textSecondary, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
