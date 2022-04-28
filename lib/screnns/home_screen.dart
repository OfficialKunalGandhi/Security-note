import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/utils/assets.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:security_notes/utils/route.dart';
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
          shrinkWrap: true,
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
                    title: Strings.rootCheck,
                    imagePath: Assets.rootCheck,
                    routeName: Routes.homeScreen,
                  ),
                  if (Platform.isAndroid)
                    CustomButton(
                      title: Strings.developerModeCheck,
                      imagePath: Assets.rootCheck,
                      routeName: Routes.developerModeCheck,
                    ),
                  CustomButton(
                    title: Strings.addPersonalNote,
                    imagePath: Assets.rootCheck,
                    hint: Strings.localStorage,
                    routeName: Routes.saveNote,
                    arguments: const {"typeNote": Strings.localStorage},
                  ),
                  CustomButton(
                    title: Strings.addPersonalNote,
                    imagePath: Assets.rootCheck,
                    hint: Strings.globelStorage,
                    routeName: Routes.homeScreen,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
