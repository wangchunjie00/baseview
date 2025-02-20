
/// 配置列表网络请求规范
mixin AbstractListNetWork {

  //配置网络请求参数
  Map<String, dynamic> configNetWorkParmas();

  /// 网络请求
  void getnetworkdata(Map<String, dynamic> info);

  /// 下拉刷新
  void refreshData();

  /// 上拉刷新
  void loadMore();
}

/// 配置普通网络请求规范
 mixin AbstractNetWork {
  // @protected
  Map<String, dynamic> configNetWorkParmas();

  /// 网络请求
  // @protected
  void getnetworkdata(Map<String, dynamic> info);
}
