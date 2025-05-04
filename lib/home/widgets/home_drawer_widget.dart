import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_icons.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/utils/utils.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = Utils.getWindowSize(context).width;
    return Align(
      alignment: Alignment.centerRight,
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: screenWidth < 500 ? screenWidth * 0.8 : 400,
          color: AppColors.drawerColor.withValues(alpha: (0.85 * 255)),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(Icons.close, color: AppColors.white, size: 28),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                const SizedBox(height: 28),
                buildMenuItem(context, AppStrings.features, () {}),
                buildMenuItem(context, AppStrings.events, () {}),
                buildMenuItem(context, AppStrings.blogs, () {}),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        AppStrings.downloadTheApp,
                        style: semiBoldStyle400Galano(context: context, fontColor: AppColors.white, fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppIcons.downloadAppStore, height: 40),
                          Image.asset(AppIcons.downloadPlayStore, height: 40),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget buildMenuItem(BuildContext context, String title, VoidCallback onTap) {
    return ListTile(
      title: Text(title, style: semiBoldStyle500Galano(context: context, fontColor: AppColors.white, fontSize: 16)),
      trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 16),
      onTap: onTap,
    );
  }
}
