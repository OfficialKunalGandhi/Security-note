import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/utils/assets.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:security_notes/utils/route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3))
        .then((value) => {Get.toNamed(Routes.homeScreen)});
    return Material(
      child: Container(
        color: AppColors.appColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.25),
          child: Image.asset(
            Assets.whiteIcon,
          ),
        ),
      ),
    );
  }
}
