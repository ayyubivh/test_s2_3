import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stateapp/controller/page_one_getx.dart';
import 'package:getx_stateapp/controller/page_three_getx.dart';
import 'package:getx_stateapp/core/color/color.dart';
import 'package:getx_stateapp/widgets/custom_button.dart';
import 'package:getx_stateapp/widgets/tab_widget.dart';

class PageThreeView extends StatelessWidget {
  final TabGetxCtrl myController = Get.put(TabGetxCtrl());
  final DataGetCtrl dataController = Get.put(DataGetCtrl());

  PageThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Get.arguments == true
            ? IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.back();
                },
              )
            : null,
        title: const Text(
          'PAGE 3',
          style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: kBlack,
      ),
      body: Column(
        children: [
          const SizedBox(height: 4.0),
          Get.arguments == true
              ? Obx(
                  () {
                    if (myController.selectedIndex.value == 0) {
                      return Expanded(
                        child: Obx(() => ListView.separated(
                              itemCount: dataController.items.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    border: Border.all(color: kBlack),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                        dataController.items[index].toString()),
                                  ),
                                ).paddingAll(5.0);
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox();
                              },
                            )),
                      );
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
                )
              : Expanded(
                  child: Obx(() => ListView.separated(
                        itemCount: dataController.items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: kLightBlue,
                              border: Border.all(color: kBlack),
                            ),
                            child: ListTile(
                              title:
                                  Text(dataController.items[index].toString()),
                            ),
                          ).paddingAll(5.0);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox();
                        },
                      )),
                ),
          Get.arguments == true ? TabWidget() : const SizedBox()
        ],
      ),
    );
  }
}
