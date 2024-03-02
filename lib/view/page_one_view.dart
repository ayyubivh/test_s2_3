import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stateapp/controller/page_one_getx.dart';
import 'package:getx_stateapp/core/color/color.dart';
import 'package:getx_stateapp/widgets/custom_button.dart';
import 'package:getx_stateapp/widgets/tab_widget.dart';

class PageOneView extends StatelessWidget {
  final TabGetxCtrl myController = Get.put(TabGetxCtrl());

  PageOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'PAGE 1',
            style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: kBlack,
        ),
        body: Column(
          children: [
            Obx(
              () {
                if (myController.selectedIndex.value == 0) {
                  return customButton(
                      onPressed: () {
                        Get.toNamed("/second");
                      },
                      label: 'PAGE 2');
                } else if (myController.selectedIndex.value == 1) {
                  return customButton(
                      onPressed: () {
                        Get.toNamed("/thirdx");
                      },
                      label: 'PAGE 3');
                } else {
                  return customButton(
                      onPressed: () {
                        myController.onItemTapped(1);
                      },
                      label: 'TAB 2');
                }
              },
            ),
            TabWidget(),
          ],
        ),
      ),
    );
  }
}
