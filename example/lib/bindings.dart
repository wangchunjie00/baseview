

import 'package:baseview/baseview.dart';
import 'package:example/homecontroller.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
   
  }
}