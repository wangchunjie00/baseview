import 'package:baseview/baseview.dart';
/**
 *  列表控制器
 * */

abstract class BaseListController extends BaseController
    with AbstractListNetWork {
  /// 定义页码方便子控制器使用
  int page = 1;

  /// 刷新控制器
  RefreshController refreshController =
      RefreshController(initialRefresh: false);


  @override
  void onHidden() {
    // TODO: implement onHidden
  }
  
  /// 上拉加载
  @override
  void loadMore() {}

  /// 下拉刷新
  @override
  void refreshData() {}

}
