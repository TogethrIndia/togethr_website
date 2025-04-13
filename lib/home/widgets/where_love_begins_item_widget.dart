import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';

class WhereLoveBeginsItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String name;
  final String picPath;
  const WhereLoveBeginsItemWidget(
      {super.key, this.title = '', this.description = '', this.name = '', this.picPath = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 230,
      width: 350,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.grey200),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(
        children: [
          Text(
            description,
            style: semiBoldStyle400Galano(context: context, fontColor: AppColors.grey900, fontSize: 12),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(picPath, height: 60),
              Column(
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
