import 'package:flutter/material.dart';
import 'package:shoppabl/ui/routes/route.dart';
import 'package:shoppabl/ui/views/auth/signin_signup.dart';
import 'package:shoppabl/ui/views/splash_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/views/botton_nav_controller/botton_nav-controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            //initialRoute: splash,
            //getPages: getPages,
            home: BottonNavController(),
          );
        });
  }
}
