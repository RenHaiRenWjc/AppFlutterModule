import 'package:flutter/cupertino.dart';
import 'package:flutter_lifecycle_aware/lifecycle_observer.dart';
import 'package:flutter_lifecycle_aware/lifecycle_owner.dart';
import 'package:flutter_lifecycle_aware/lifecycle_state.dart';

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
}
