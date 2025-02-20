import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:baseview/baseview.dart';


// ignore: must_be_immutable
abstract class BaseListView<T> extends BaseCommonView<T> {
  // ignore: use_super_parameters
  BaseListView({Key? key}) : super(key: key);

  /// 创建列表视图
  Widget creatRefresherListView(
    BaseListController controller, ListBodyBuilder builder, {
    bool? enablePullUp,
    bool? enablePullDown,
  }) {
    if (controller.netState.value == NetState.loadingState) {
      /// loading 不会有这个状态,只是写一个这样的判断吧(控制器里面已经封装好了单例了,防止在网络层直接操作控制不了loading的场景)
      return const LoadingWidget();
    } else if (controller.netState.value == NetState.emptyDataState) {
      /// 返回站位视图
      return creatEmptyWidget();
    } else if (controller.netState.value == NetState.errorshowRelesh) {
      /// 返回站位刷新视图
      return creatFailWidget(controller);
    } else if (controller.netState.value == NetState.dataSussessState) {
      return RefreshConfiguration(
        headerTriggerDistance: 10,
        footerTriggerDistance: 0,
        enableBallisticLoad: false,
        headerBuilder: () => createCustomHeader(),
        footerBuilder: () => createFooter(),
        child: SmartRefresher(
            controller: controller.refreshController,

            /// 是否显示下拉
            enablePullUp: enablePullUp ?? true,

            /// 是否显示上拉
            enablePullDown: enablePullDown ?? true,

            /// 刷新回调方法
            onRefresh: () async {
              controller.refreshData();
            },

            /// 加载下一页回调
            onLoading: () async {
              controller.loadMore();
            },
            child: builder(controller)),
      );
    } else if (controller.netState == NetState.initializeState) {
      return const SizedBox();
    } else {
      return const Center(child: Text('未知情况,待排查'));
    }
  }

  /// 修改头视图配置
  ClassicHeader createHeader() {
    return ClassicHeader(
      textStyle: TextStyle(fontSize: 12.sp, color: Colors.red),
      refreshingText: '正在刷新...',
      releaseText: '刷新成功',
      completeText: '刷新成功',
      failedText: '刷新失败',
      idleText: '刷新中',
      height: 40,
    );
  }

  /// 自定义头视图配置
  CustomHeader createCustomHeader() {
    Widget body = _prompt("下拉刷新");
    return CustomHeader(
      builder: (BuildContext context, RefreshStatus? mode) {
        if (mode == RefreshStatus.canRefresh) {
          body = _header("下拉可以刷新");
        } else if (mode == RefreshStatus.refreshing) {
          body = _header("刷新中...");
        } else if (mode == RefreshStatus.failed) {
          body = _header("刷新失败");
        } else {
          body = _header("刷新成功");
        }
        return body;
      },
    );
  }

  /// 头视图样式
  Widget _header(String showText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CupertinoActivityIndicator(
          radius: 10,
          color: Colors.black45,
        ),
        SizedBox(width:8.w),
        Text(
          showText,
          style: TextStyle(
            color: const Color(0xFF979797),
            fontSize: 14.sp,
          ),
        )
      ],
    );
  }

  /// 修改尾视图配置
  CustomFooter createFooter() {
    Widget body = _prompt("上拉加载更多");
    return CustomFooter(
      builder: (context, mode) {
        if (mode == LoadStatus.idle) {
          body = _prompt("上拉加载更多");
        } else if (mode == LoadStatus.loading) {
          body = _prompt("加载中...");
        } else if (mode == LoadStatus.failed) {
          body = _prompt("加载失败");
        } else if (mode == LoadStatus.canLoading) {
          body = _prompt("松手加载更多");
        } else {
          body = _prompt("没有更多了～");
        }
        return body;
      },
    );
  }

  Widget _prompt(String showText) {
    return Center(
      child: Text(
        showText,
        style: TextStyle(
          color: const Color(0xFF979797),
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
