
export 'src/abstract_network.dart';
export 'src/base_common_controller.dart';
export 'src/base_common_view.dart';
export 'src/base_controller.dart';
export 'src/base_list_controller.dart';
export 'src/base_list_view.dart';
export 'src/base_view.dart';
export 'src/empty_status.dart';
export 'src/loading_widget.dart';
export 'package:get/get.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:pull_to_refresh/pull_to_refresh.dart';
// ignore: duplicate_export
export 'package:flutter_screenutil/flutter_screenutil.dart';
import 'src/base_common_controller.dart';
import 'package:flutter/material.dart';
import 'src/base_list_controller.dart';
typedef BodyBuilder = Widget Function(BaseCommonController baseState);
typedef ListBodyBuilder = Widget Function(BaseListController baseState);
