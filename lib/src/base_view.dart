import 'package:flutter/material.dart';
import 'package:baseview/baseview.dart';

// ignore: must_be_immutable
abstract class BaseView<T> extends GetView<T> {
  // ignore: use_super_parameters
  BaseView({Key? key}) : super(key: key);

  /// 状态栏高度
  double statusBarH = ScreenUtil().statusBarHeight;

  /// 导航栏高度
  double navBarH = AppBar().preferredSize.height;

  /// 安全区域高度
  double safeBarH = ScreenUtil().bottomBarHeight;

  /// 设置背景颜色
  Color? contentColor;

  /// 设置标题文字
  String? navTitle;

  /// 设置标题文字颜色
  Color? navTitleColor;

  /// 设置导航栏颜色
  Color? navColor;

  /// 设置左边按钮
  Widget? leftButton;

  /// 设置左边宽度
  double? leftWidth;

  /// 设置右边按钮数组
  List<Widget>? rightActionList;

  /// 是否隐藏导航栏
  bool? isHiddenNav;

  /// 设置主主视图内容(子类不实现会报错)
  Widget buildContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: contentColor ?? Colors.white,
        appBar: isHiddenNav == true
            ? null
            : AppBar(
                backgroundColor: navColor ?? Colors.white,
                title: Text(
                  navTitle ?? '',
                  style: TextStyle(color: navTitleColor ?? Colors.black,fontWeight: FontWeight.w600),
                ),
                leading: leftButton ?? const SizedBox(),
                leadingWidth: leftWidth ?? 0,
                actions: rightActionList ?? [],
              ),
        body: buildContent());
  }
}
