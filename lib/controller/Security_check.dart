import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:get/get.dart';

class SecurityCheck extends GetxController {
  Future<bool> checkDeveoplerMode() async {
    bool developerMode =
        await FlutterJailbreakDetection.developerMode; // android only.

    return developerMode;
  }

  Future<bool> checkRootDevice() async {
    bool rootCheck = await FlutterJailbreakDetection.jailbroken;

    return rootCheck;
  }
}
