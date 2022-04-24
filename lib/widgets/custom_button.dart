import 'package:flutter/material.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String title, imagePath;
  String? hint;
  CustomButton(
      {Key? key, required this.title, required this.imagePath, this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.sp),
            color: AppColors.appColor),
        width: 40.w,
        height: 20.h,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          hint == null
              ? Text(hint!,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.whiteColor,
                  ))
              : Container(),
          Image.asset(
            imagePath,
            height: 10.h,
          ),
          Text(title,
              maxLines: 2,
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColors.whiteColor,
              ))
        ]));
  }
}
