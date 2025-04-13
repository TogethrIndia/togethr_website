import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/size_config.dart';
import 'package:togethr_website/constants/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final double? height;
  final String loadingText;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? borderColor;
  final double fontSize;
  final BorderRadius? borderRadius;

  final TextStyle? textStyle;
  final String? iconPath;
  final Color iconColor;
  final double? iconHeight;
  final bool enableShimmer;

  const CustomButton(
      {super.key,
      this.text,
      this.height,
      this.loadingText = '',
      this.onPressed,
      this.color,
      this.borderColor,
      this.fontSize = 16.0,
      this.textStyle,
      this.borderRadius,
      this.iconPath,
      this.iconHeight,
      this.iconColor = AppColors.white,
      this.enableShimmer = false});

  @override
  Widget build(BuildContext context) {
    // print('working state $state');
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          elevation: WidgetStateProperty.resolveWith<double>(
            // As you said you dont need elevation. I'm returning 0 in both case
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return 0;
              }
              return 0; // Defer to the widget's default.
            },
          ),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          backgroundColor: WidgetStateProperty.all<Color>((color ?? AppColors.primary)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(8.0)),
              side: BorderSide(color: (borderColor ?? AppColors.primary))))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height ?? 48.0 * SizeConfig.heightMultiplier,
            alignment: Alignment.center,
            child: Text(text ?? '',
                style: textStyle ?? semiBoldStyle400Galano(context: context, fontColor: AppColors.grey100)),
          ),
        ],
      ),
    );
  }
}
