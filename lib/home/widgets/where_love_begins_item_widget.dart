import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/utils/utils.dart';

class WhereLoveBeginsItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String name;
  final String picPath;
  const WhereLoveBeginsItemWidget(
      {super.key, this.title = '', this.description = '', this.name = '', this.picPath = ''});

  @override
  Widget build(BuildContext context) {
    final Size size = Utils.getWindowSize(context);
    final double screenWidth = size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 230,
      width: screenWidth * 0.3,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.grey200),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            style: semiBoldStyle400Galano(context: context, fontColor: AppColors.grey900, fontSize: 12),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 24,
            children: [
              CircleAvatar(radius: 30, child: Image.asset(picPath, height: 60)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: boldStyleGalano(context: context, fontSize: 14, fontColor: AppColors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: semiBoldStyle500Galano(context: context, fontSize: 14, fontColor: AppColors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
