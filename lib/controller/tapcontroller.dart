import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:get/get.dart';

class GetxTapController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // final BuildContext context;

  // GetxTapController({required this.context});
  //table
  bool _isadminlogin = false;
  bool get isadminlogin => _isadminlogin;

  void loginpagehandler({required bool isadmin}) {
    _isadminlogin = isadmin;
    update();
  }
}
