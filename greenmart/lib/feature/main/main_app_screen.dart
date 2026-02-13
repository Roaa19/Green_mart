import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/feature/home/home_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text("Home1")),
    Center(child: Text("Home2")),
    Center(child: Text("Home3")),
    Center(child: Text("Home4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.storeSvg),
            label: 'Shope',
            activeIcon: SvgPicture.asset(
              AppImage.storeSvg,
              colorFilter: ColorFilter.mode(
                AppColor.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.searchSvg),
            label: 'Explore',
            activeIcon: SvgPicture.asset(
              AppImage.searchSvg,
              colorFilter: ColorFilter.mode(
                AppColor.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.cartSvg),
            label: 'Cart',
            activeIcon: SvgPicture.asset(
              AppImage.cartSvg,
              colorFilter: ColorFilter.mode(
                AppColor.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.heartSvg),
            label: 'Favourite',
            activeIcon: SvgPicture.asset(
              AppImage.heartSvg,
              colorFilter: ColorFilter.mode(
                AppColor.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.userSvg),
            label: 'Account',
            activeIcon: SvgPicture.asset(
              AppImage.userSvg,
              colorFilter: ColorFilter.mode(
                AppColor.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
