import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security_notes/utils/colors.dart';
import 'package:security_notes/utils/generate_route.dart';
import 'package:security_notes/utils/route.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primaryColorLight: AppColors.appColor,
            primaryColor: AppColors.appColor,

            primarySwatch: Colors.blue,
          ),
          initialRoute: Routes.splashScreen,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      );
    });
  }
}
