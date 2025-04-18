import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_icons.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/size_config.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/utils/utils.dart';
import 'package:togethr_website/widgets/custom_button.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = Utils.getWindowSize(context);
    final double screenWidth = size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppIcons.homeHeaderIcon,
            ),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top navbar
            Row(
              children: [
                Image.asset(AppIcons.togethrLogo, height: 40),
                const SizedBox(width: 40),
                Text(
                  AppStrings.events,
                  style: semiBoldStyle500Galano(context: context, fontSize: 14, fontColor: AppColors.grey100),
                ),
                const SizedBox(width: 40),
                Text(
                  AppStrings.blogs,
                  style: semiBoldStyle500Galano(context: context, fontSize: 14, fontColor: AppColors.grey100),
                ),
                const Spacer(),
                Text(
                  AppStrings.haveAnAccount,
                  style: semiBoldStyle500Galano(context: context, fontSize: 14, fontColor: AppColors.grey100),
                ),
                const SizedBox(width: 40),
                CustomButton(
                  color: AppColors.white,
                  borderColor: AppColors.white,
                  text: AppStrings.joinNow,
                  textStyle: semiBoldStyle600Galano(
                    context: context,
                    fontColor: AppColors.grey900,
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 180), // Distance from top to hero

            // Hero Title
            Text(
              AppStrings.heroText,
              style: boldStyleGalano(context: context, fontSize: 48, fontColor: AppColors.white),
            ),

            const SizedBox(height: 8),

            // Hero Subtitle
            SizedBox(
              width: screenWidth * 0.4,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: AppStrings.togethr,
                      style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.white, fontSize: 20),
                    ),
                    TextSpan(
                      text: " - ${AppStrings.heroTextDesc}",
                      style: semiBoldStyle600GalanoAlt(context: context, fontColor: AppColors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60),
            Container(
              width: 242,
              height: 52,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  transform: GradientRotation(113.96 * (3.1416 / 180)), // converting degrees to radians
                  colors: [
                    AppColors.gradient1,
                    AppColors.gradient2,
                    AppColors.gradient3,
                    AppColors.gradient4,
                  ],
                  stops: [-0.0139, 0.2332, 0.6449, 1.1508],
                ),
              ),
              child: Text(
                AppStrings.earlyAccess,
                style: semiBoldStyle600Galano(context: context, fontColor: AppColors.grey900, fontSize: 20),
              ),
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
