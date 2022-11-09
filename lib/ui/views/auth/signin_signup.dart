import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shoppabl/const/app_colors.dart';
import 'package:shoppabl/ui/widgets/custom_botton.dart';
import 'package:shoppabl/ui/widgets/text_field.dart';

class SignIn_SignUp extends StatefulWidget {
  const SignIn_SignUp({super.key});

  @override
  State<SignIn_SignUp> createState() => _SignIn_SignUpState();
}

class _SignIn_SignUpState extends State<SignIn_SignUp> {
  bool isMale = true;
  bool isSignupScreen = false;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/login.jpg"),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 90.h, left: 20.w),
                color: Color(0xFF570861).withOpacity(0.50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Wecolme to",
                          style: TextStyle(
                            fontSize: 25.sp,
                            letterSpacing: 2,
                            color: Colors.yellow[200],
                          ),
                          children: [
                            TextSpan(
                              text: "Shoppable",
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.yellow[200],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      isSignupScreen
                          ? "Signup to Contiue"
                          : "Signin to Contiue",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          buildBottonHelfContainerPositioned(true),
          Positioned(
            top: 200.h,
            child: Container(
              height: 350.h,
              padding: EdgeInsets.all(20.w),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? AppColors.textColor1
                                      : AppColors.activeColor),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3.h),
                                height: 3.h,
                                width: 55.w,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "SIGNUP",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? AppColors.activeColor
                                      : AppColors.textColor1),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3.h),
                                height: 3.h,
                                width: 55.w,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  if (isSignupScreen) buildSignnupSection(),
                  Container(
                    child: Column(
                      children: [
                        // buidTextField(
                        //     Icons.email_outlined, "E-mail", false, true),
                        // buidTextField(
                        //     Icons.lock_outline, "Password", false, true),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          buildBottonHelfContainerPositioned(false),
          Positioned(
            top: MediaQuery.of(context).size.height - 100,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Text("Or Signup with"),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNftsDgRfyE_JqXOUtp1QjGoJTGqrY8oOARA&usqp=CAU"),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(width: 15.w),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://blog.hubspot.com/hubfs/image8-2.jpg"),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildSignnupSection() {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          buidTextField(Icons.person_outline, "User Name", false, false),
          buidTextField(Icons.email_outlined, "E-mail", false, true),
          buidTextField(Icons.lock_outline, "Password", false, true),
          buidTextField(Icons.lock_outline, "Comfim Password", false, true),
          Container(
            width: 140.w,
            margin: EdgeInsets.only(top: 10.h),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "By pressing' you afree to our ",
                style: TextStyle(color: AppColors.textColor2),
                children: [
                  TextSpan(
                      text: "term & conditions",
                      style: TextStyle(color: Colors.orange)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildBottonHelfContainerPositioned(bool showShadow) {
    return Positioned(
      top: 505.h,
      right: 0,
      left: 0,
      child: Container(
        height: 80.h,
        width: 80.w,
        padding: EdgeInsets.all(15.r),
        decoration: BoxDecoration(
          boxShadow: [
            if (showShadow)
              BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 1)),
          ],
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: CircleAvatar(
            backgroundColor: AppColors.deep_color,
            child: Icon(Icons.arrow_forward)),
      ),
    );
  }

  Padding buidTextField(
      IconData icon, String hinText, bool isPassword, bool isEmail) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.w),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: AppColors.iconColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textColor1),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textColor1),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          contentPadding: EdgeInsets.all(8.w),
          hintText: hinText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textColor1,
          ),
        ),
      ),
    );
  }
}
