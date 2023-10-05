import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeetaController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var isReverce = true;
  Rx<TabController>? controller;

  void change() {
    isReverce = !isReverce;
    update();
  }

  var currentpage = 0;

  void changePage(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    controller?.value = TabController(length: 2, vsync: this);
    super.onInit();
  }
}
