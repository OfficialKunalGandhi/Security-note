import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/utils/local_storage.dart';

class SaveNoteController extends GetxController {
  Future<String> GetNoteLocal() async {
    String? value =
        await LocalStorage().getString(LocalStorage.localNote) ?? "";
    return value;
  }
}
