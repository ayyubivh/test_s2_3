import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stateapp/view/page_one_view.dart';
import 'package:getx_stateapp/view/page_three_view.dart';
import 'package:getx_stateapp/view/page_two_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyApp()),
        GetPage(
          name: '/first',
          page: () => PageOneView(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/second',
          page: () => PageTwoView(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/third',
          page: () => PageThreeView(),
          transition: Transition.noTransition,
        ),
        GetPage(
            name: '/thirdx',
            page: () => PageThreeView(),
            transition: Transition.noTransition,
            fullscreenDialog: true,
            arguments: false)
      ],
      home: PageOneView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
