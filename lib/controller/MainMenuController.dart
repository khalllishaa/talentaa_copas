import 'package:get/get.dart';

class MainMenuController extends GetxController {
  var selectedIndex = 0.obs;

  void updateIndex(int index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index; // Update only if the index changes
    }
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}