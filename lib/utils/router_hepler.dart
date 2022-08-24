import 'package:flutter/material.dart';

///路由辅助类
class RouterHelper {
  ///直接传递页面进行导航
  static Future push(BuildContext context, Widget widget,
      {bool fullscreenDialog = false}) {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) {
              return widget;
            },
            /// 全屏弹窗效果，从下往上出现
            fullscreenDialog: fullscreenDialog));
  }

  /// 关闭页面
  static void pop<T extends Object?>(BuildContext context, [T? result]) {
    Navigator.pop(context, result);
  }
}
