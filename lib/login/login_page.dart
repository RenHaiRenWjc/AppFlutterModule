import 'package:flutter/cupertino.dart';
import 'package:flutter_lifecycle_aware/lifecycle.dart';
import 'package:flutter_lifecycle_aware/lifecycle_observer.dart';
import 'package:flutter_lifecycle_aware/lifecycle_owner.dart';
import 'package:flutter_lifecycle_aware/lifecycle_state.dart';

/// 登录页面
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _LoginPageState extends State<LoginPage>
    with Lifecycle, LifecycleObserver {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  void onLifecycleChanged(LifecycleOwner owner, LifecycleState state) {
    // TODO: implement onLifecycleChanged
  }
}
