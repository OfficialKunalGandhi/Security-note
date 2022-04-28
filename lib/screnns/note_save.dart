import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/controller/save_note_controller.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:security_notes/utils/local_storage.dart';
import 'package:sizer/sizer.dart';

class SaveNote extends StatefulWidget {
  SaveNote({Key? key}) : super(key: key);

  @override
  State<SaveNote> createState() => _SaveNoteState();
}

class _SaveNoteState extends State<SaveNote> {
  String? typeNote = "";

  TextEditingController textEditingController = TextEditingController();

  var saveNoteController = Get.put(SaveNoteController());
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      if (mounted) {
        textEditingController.text = await saveNoteController.GetNoteLocal();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    typeNote = arguments["typeNote"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
            child: TextButton(
              onPressed: () {
                LocalStorage().setString(
                    LocalStorage.localNote, textEditingController.text);
              },
              child: const Text(
                "Save",
                style: TextStyle(color: AppColors.appColor),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.whiteColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.sp)),
                  )),
            ),
          ),
        ],
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 2.h),
          child: TextField(
            controller: textEditingController,
            keyboardType: TextInputType.multiline,
            maxLines: 60,
            decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
            autocorrect: true,
            autofocus: true,
          )),
    );
  }
}
