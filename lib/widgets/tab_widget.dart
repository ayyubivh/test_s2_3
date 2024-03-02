import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stateapp/controller/page_one_getx.dart';
import 'package:getx_stateapp/core/color/color.dart';

class TabWidget extends StatelessWidget {
  final TabGetxCtrl controller = Get.put(TabGetxCtrl());

  TabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double buttonWidth = constraints.maxWidth / 3.1;
        double buttonHeigth = 52;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Obx(() {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  fixedSize: Size(buttonWidth, buttonHeigth),
                  backgroundColor:
                      controller.selectedIndex.value == 0 ? kBlack : kGrey800,
                ),
                onPressed: () {
                  controller.onItemTapped(0);
                },
                child: const Text('TAB 1'),
              );
            }),
            const SizedBox(width: 5.0),
            Obx(() {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  fixedSize: Size(buttonWidth, buttonHeigth),
                  backgroundColor:
                      controller.selectedIndex.value == 1 ? kBlack : kGrey800,
                ),
                onPressed: () {
                  controller.onItemTapped(1);
                },
                child: const Text('TAB 2'),
              );
            }),
            const SizedBox(width: 5.0),
            Obx(() {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  fixedSize: Size(buttonWidth, buttonHeigth),
                  backgroundColor:
                      controller.selectedIndex.value == 2 ? kBlack : kGrey800,
                ),
                onPressed: () {
                  controller.onItemTapped(2);
                },
                child: const Text('TAB 3'),
              );
            }),
          ],
        );
      },
    );
  }
}
