import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stateapp/services/page_three_services.dart';

class DataGetCtrl extends GetxController {
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  RxList<dynamic> items = <dynamic>[].obs;

  Future<void> fetchData() async {
    final response = await PageThreeService().getFoodItems();
    try {
      if (response != null) {
        final List<dynamic> itemList =
            await PageThreeService().getFoodItems() ?? [];

        items.assignAll(itemList);
      }
    } catch (e) {
      debugPrint('Error fetching data: $e');
    }
  }
}
