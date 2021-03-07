import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/src/Explore.dart';
import 'package:youtube_clone_app/src/Home.dart';
import 'package:youtube_clone_app/src/Library.dart';
import 'package:youtube_clone_app/src/Plus.dart';
import 'package:youtube_clone_app/src/Subs.dart';
import 'package:youtube_clone_app/src/app_controller.dart';

class App extends GetView<AppController> {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          case RouteName.Home:
            return Home();
            break;
          case RouteName.Explore:
            return Explore();
            break;
          case RouteName.Plus:
            return Plus();
            break;
          case RouteName.Subs:
            return Subs();
            break;
          case RouteName.Library:
            return Library();
            break;
        }
        return Container();
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          onTap: controller.changePageIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/home_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg"),
                label: "홈"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/icons/compass_off.svg",
                  width: 22,
                ),
                activeIcon: SvgPicture.asset(
                  "assets/svg/icons/compass_on.svg",
                  width: 22,
                ),
                label: "탐색"),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SvgPicture.asset("assets/svg/icons/plus.svg",
                        width: 35)),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/subs_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/subs_on.svg"),
                label: "구독"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/library_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/library_on.svg"),
                label: "보관함")
          ],
        ),
      ),
    );
  }
}
