import 'package:togethr_website/constants/app_icons.dart';
import 'package:togethr_website/constants/app_strings.dart';

class AppConstants {
  static const String togethr = "togethr";
  static const String togethrEmail = "togethrindia@gmail.com";
  static const double mobileWidth = 1148;

  static const List<List<String>> featuresMap = [
    [
      AppIcons.complimentIcon,
      AppStrings.openingMoves,
      AppStrings.openingMovesDesc,
    ],
    [
      AppIcons.videoCallIcon,
      AppStrings.videoChat,
      AppStrings.videoChatDesc,
    ],
    [
      AppIcons.travelModeIcon,
      AppStrings.travelMode,
      AppStrings.travelModeDesc,
    ],
    [
      AppIcons.tappingIcon,
      AppStrings.cupidTap,
      AppStrings.cupidTapDesc,
    ],
    [
      AppIcons.vibesIcon,
      AppStrings.vibes,
      AppStrings.vibesDesc,
    ],
  ];
}
