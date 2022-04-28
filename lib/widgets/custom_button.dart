import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String title, imagePath;
  final String routeName;
  String? hint = "";
  dynamic arguments;
  CustomButton(
      {Key? key,
      required this.title,
      required this.imagePath,
      this.hint,
      this.arguments,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(routeName, arguments: arguments ?? {"": ""});
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: AppColors.appColor),
          width: 40.w,
          height: 20.h,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hint == ""
                    ? Container()
                    : Text(
                        hint ?? "",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.whiteColor,
                        ),
                      ),
                Image.asset(
                  imagePath,
                  height: 10.h,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 35.w,
                  height: 5.h,
                  child: Text(title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.whiteColor,
                      )),
                ),
              ])),
    );
  }
}
