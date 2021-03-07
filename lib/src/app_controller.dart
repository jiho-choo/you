import 'package:get/get.dart';

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;
  void changePageIndex(int index) {
    currentIndex(index);
  }
}

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
