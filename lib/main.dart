import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_constants.dart';
import 'package:togethr_website/home/home_screen.dart';

bool isMobileView = false;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth >= AppConstants.mobileWidth) {
          isMobileView = false;
        } else {
          isMobileView = true;
        }
        return HomeScreen();
      }),
    );
  }
}
