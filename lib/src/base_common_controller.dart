import 'package:baseview/baseview.dart';
abstract class BaseCommonController extends BaseController with AbstractNetWork {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getnetworkdata(configNetWorkParmas());
  }
  
}
