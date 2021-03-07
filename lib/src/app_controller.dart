import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/src/youtube_bottom_sheet.dart';

enum RouteName { Home, Explore, Plus, Subs, Library }

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;
  void changePageIndex(int index) {
    if (RouteName.values[index] == RouteName.Plus) {
      _showBottomSheet();
    } else {
      currentIndex(index);
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(YoutubeBottomSheet());
  }
}

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
