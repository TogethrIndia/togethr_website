import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/app_strings.dart';
import 'package:togethr_website/constants/text_styles.dart';
import 'package:togethr_website/home/widgets/where_love_begins_item_widget.dart';
import 'package:togethr_website/main.dart';

class WhereLoveBeginsWidget extends StatefulWidget {
  const WhereLoveBeginsWidget({super.key});

  @override
  State<WhereLoveBeginsWidget> createState() => _WhereLoveBeginsWidgetState();
}

class _WhereLoveBeginsWidgetState extends State<WhereLoveBeginsWidget> {
  int selectedIndex = 0;

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
              fontSize: isMobileView ? 24 : 32,
            ),
          ),
          const SizedBox(height: 24),
          isMobileView
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: (AppStrings.whereLoveBeginsTestimonials).length > 1 ? true : false,
                        disableCenter: true,
                        autoPlayInterval: const Duration(seconds: 8),
                        autoPlayAnimationDuration: const Duration(seconds: 4),
                        viewportFraction: 1,
                        height: 230,
                        onPageChanged: (index, reason) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                      items: (AppStrings.whereLoveBeginsTestimonials).map((item) {
                        return WhereLoveBeginsItemWidget(
                          title: item[AppStrings.title] ?? '',
                          description: item[AppStrings.description] ?? '',
                          name: item[AppStrings.name] ?? '',
                          picPath: "assets/icons/fake_women.png",
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: List.generate(AppStrings.whereLoveBeginsTestimonials.length, (index) {
                        return Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: index == selectedIndex ? AppColors.primary : AppColors.grey300,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    )
                  ],
                )
              : Row(
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
