import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/home/widgets/home_drawer_widget.dart';

class Utils {
  static Size getWindowSize(context) {
    return MediaQuery.of(context).size;
  }

  static void showHomeDrawer(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Menu",
      barrierColor: Colors.transparent, // Slight dim for rest of screen
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) {
        return Stack(
          children: [
            // The sliding drawer on the right
            Align(
              alignment: Alignment.centerRight,
              child: SlideTransition(
                position: Tween(begin: const Offset(1, 0), end: Offset.zero)
                    .animate(CurvedAnimation(parent: anim1, curve: Curves.easeOut)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: double.infinity,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                      child: const HomeDrawerWidget(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(1, 0), end: Offset.zero).animate(anim1),
          child: child,
        );
      },
    );
  }

  static void showEarlyAccessModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text('Title'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('This is the subtitle'),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'First Field',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Second Field',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Third Field',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // handle submit
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}
