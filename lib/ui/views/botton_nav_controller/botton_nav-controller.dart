import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shoppabl/const/app_colors.dart';
import 'package:shoppabl/ui/views/botton_nav_controller/pages/dashboard.dart';
import 'package:shoppabl/ui/views/botton_nav_controller/pages/notifications.dart';
import 'package:shoppabl/ui/views/botton_nav_controller/pages/profile.dart';

import 'pages/facourite.dart';

void main() => runApp(MaterialApp(home: BottonNavController()));

class BottonNavController extends StatefulWidget {
  @override
  _BottonNavControllerState createState() => _BottonNavControllerState();
}

class _BottonNavControllerState extends State<BottonNavController> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _selectedInbox = 0;

  void __navigatorButtonBar(int index) {
    setState(() {
      _selectedInbox = index;
    });
  }

  final List<Widget> _page = [
    DashboardScreen(),
    NotificationsScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.dashboard_outlined, size: 30, color: AppColors.deep_color),
          Icon(Icons.notifications_outlined,
              size: 30, color: AppColors.deep_color),
          Icon(Icons.favorite_outline_outlined,
              size: 30, color: AppColors.deep_color),
          Icon(Icons.person_outline, size: 30, color: AppColors.deep_color),
        ],
        color: Colors.white,
        buttonBackgroundColor: Color(0xFFEDEDED),
        backgroundColor: AppColors.deep_color,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _selectedInbox = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _page[_selectedInbox],
    );
  }
}
