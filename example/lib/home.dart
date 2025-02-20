

import 'package:baseview/baseview.dart';
import 'package:example/homecontroller.dart';
import 'package:flutter/material.dart';

class HomePage extends BaseCommonView<HomeController> {


  @override
  // TODO: implement navTitle
  String? get navTitle => "test";
 
 @override
  Widget buildContent() {
	// Implement your buildContent method here
    return creatCommonView(controller, (context) {
      return Text("1111");
    });
  }

  
}
  

