import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/app_colors.dart';

// Widget customButton(String buttonText, onPressed, color) {
//   return SizedBox(
//     width: 1.sw,
//     height: 56.h,
//     child: ElevatedButton(
//       onPressed: onPressed,
//       child: Text(
//         buttonText,
//         style: TextStyle(color: Colors.white, fontSize: 18.sp),
//       ),
//       style: ElevatedButton.styleFrom(
//         primary: color,
//         elevation: 3,
//       ),
//     ),
//   );
// }

Widget pressBotton(String text, color) {
  return Column(
    children: [
      Text(
        "SIGNUP",
        style: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.bold, color: color),
      ),
      Container(
        margin: EdgeInsets.only(top: 3.h),
        height: 3.h,
        width: 55.w,
        color: Colors.orange,
      )
    ],
  );
}
