import 'package:flutter/cupertino.dart';
import 'package:flutter_lifecycle_aware/lifecycle_observer.dart';
import 'package:flutter_lifecycle_aware/lifecycle_owner.dart';
import 'package:flutter_lifecycle_aware/lifecycle_state.dart';
import 'package:my_flutter_module/me/theme_view_model.dart';

import '../bean/user_bean.dart';

class MeViewModel extends ChangeNotifier with LifecycleObserver {
  @override
  void onLifecycleChanged(LifecycleOwner owner, LifecycleState state) {}

  ///是否已经登录
  bool _hasLogin = false;

  bool get hasLogin => _hasLogin;

  set hasLogin(bool value) {
    _hasLogin = value;
    notifyListeners();
  }

  ///用户信息实体类
  UserInfo _userInfo = UserInfo();

  UserInfo get userInfo => _userInfo;

  set userInfo(UserInfo value) {
    _userInfo = value;
    notifyListeners();
  }

  /// 暗黑模式
  bool _darkMode = false;

  bool get darkMode => _darkMode;

  set darkMode(bool value) {
    _darkMode = value;
  }

  ///主题下标
  int _themeIndex = ThemeViewModel.defaultThemeIndex;

  int get themeIndex => _themeIndex;

  set themeIndex(int value) {
    _themeIndex = value;
  }

  ///多语言下标
  int _localIndexValue = 0;

  int get localIndexValue => _localIndexValue;

  set localIndexValue(int value) {
    _localIndexValue = value;
    notifyListeners();
  }
}
