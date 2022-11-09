import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppabl/const/app_colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1FBF8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEDEDED),
        centerTitle: true,
        toolbarHeight: 60.w,
        leading: Icon(Icons.menu, size: 28.sp, color: Colors.black),
        title: Padding(
          padding: EdgeInsets.only(right: 50.w),
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Icon(Icons.search, size: 28.sp, color: Colors.black),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Icon(
              Icons.shopping_cart,
              size: 25.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5.h),
            Container(
              height: 120.h,
              width: 320.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/add.png"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.sp, left: 16.w, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Special Offers", style: TextStyle(fontSize: 18.sp)),
                  Text(
                    "See all",
                    style:
                        TextStyle(fontSize: 14.sp, color: AppColors.deep_color),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.sp, top: 8.sp),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      height: 115.h,
                      width: 105.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/product.jpg", width: 60.w),
                          Text(
                            "Iphone 12 Pro",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "24,900",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 8.5.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          Text(
                            "22,990",
                            style: TextStyle(
                                fontSize: 11.sp, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
