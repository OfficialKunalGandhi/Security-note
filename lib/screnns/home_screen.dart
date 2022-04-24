import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/utils/assets.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:security_notes/utils/strings.dart';
import 'package:security_notes/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColors.whiteColor,
        child: ListView(
          children: [
            Image.asset(
              Assets.securityAnimation,
              width: 80.w,
              height: 30.h,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                shrinkWrap: true,
                children: [
                  CustomButton(
                      title: Strings.rootCheck, imagePath: Assets.rootCheck),
                  CustomButton(
                      title: Strings.rootCheck, imagePath: Assets.rootCheck),
                  CustomButton(
                      title: Strings.rootCheck, imagePath: Assets.rootCheck),
                  CustomButton(
                      title: Strings.rootCheck, imagePath: Assets.rootCheck),
                ],
              ),
            )
          ],
        ));
  }
}
