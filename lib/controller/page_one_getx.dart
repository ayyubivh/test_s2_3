import 'package:get/get.dart';
import 'package:getx_stateapp/view/page_one_view.dart';

class TabGetxCtrl extends GetxController {
  var selectedIndex = 0.obs;
  var tapCount = 0.obs;

  void onItemTapped(int index) {
    if (tapCount.value < 2 && selectedIndex.value == index) {
      tapCount.value++;
      if (tapCount.value == 2) {
        tapCount.value = 0;

        Get.offAll(PageOneView(), transition: Transition.noTransition);
      }
    } else {
      selectedIndex.value = index;
      tapCount.value = 1;
    }

    update();
  }
}
