import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/controller/Security_check.dart';
import 'package:security_notes/utils/assets.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:sizer/sizer.dart';

class DeveloperModeCheck extends StatefulWidget {
  const DeveloperModeCheck({Key? key}) : super(key: key);

  @override
  State<DeveloperModeCheck> createState() => _DeveioperModeCheckState();
}

class _DeveioperModeCheckState extends State<DeveloperModeCheck> {
  SecurityCheck securityCheck = Get.put(SecurityCheck());
  bool developerMode = false;
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      developerMode = await securityCheck.checkDeveoplerMode();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(Assets.appIcon),
            Shimmer(
              duration: Duration(seconds: 2),
              child: Container(
                height: 40.h,
                width: 100.w,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
          child: Text(
              developerMode
                  ? "Your device is safe and secure. please more safely use root check"
                  : "Your device has developer mode, please developer mode off",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.appColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              )),
        ),
        developerMode
            ? CircleAvatar(
                radius: 30.sp,
                backgroundColor: AppColors.appColor,
                child: Icon(
                  Icons.done,
                  color: AppColors.whiteColor,
                  size: 10.w,
                ))
            : Icon(
                Icons.cancel,
                color: AppColors.appColor,
                size: 20.w,
              )
      ]),
    );
  }
}
