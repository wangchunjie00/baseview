import 'package:flutter_test/flutter_test.dart';

import 'package:baseview/baseview.dart';
void main() {
  test('adds one to input values', () {
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
  });
}

class homeController extends BaseCommonController {
  @override
  void initData() {
    // TODO: implement initData
    getnetworkdata(configNetWorkParmas());
  }

  @override
  Map<String, dynamic> configNetWorkParmas() {
    // TODO: implement configNetWorkParmas
    return {};
  }
  
  @override
  void getnetworkdata(Map<String, dynamic> info) {
    // TODO: implement getnetworkdata
  }

}

class mineController extends BaseListController {
  @override
  void initData() {
  }
  
  @override
  Map<String, dynamic> configNetWorkParmas() {
    // TODO: implement configNetWorkParmas
    throw UnimplementedError();
  }
  
  @override
  void getnetworkdata(Map<String, dynamic> info) {
    // TODO: implement getnetworkdata
  }
  
 
  
  }
