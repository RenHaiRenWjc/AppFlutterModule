import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:my_flutter_module/setting/setting_page.dart';

import 'flutter_page.dart';

void main() {
  ///这里的CustomFlutterBinding调用务必不可缺少，用于控制Boost状态的resume和pause
  CustomFlutterBinding();
  runApp(const MyApp());
}

///创建一个自定义的Binding，继承和with的关系如下，里面什么都不用写
class CustomFlutterBinding extends WidgetsFlutterBinding
    with BoostFlutterBinding {}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FlutterBoostApp(
      initialRoute: "settingPage",
      routeFactory,
      appBuilder: appBuilder,
    );
  }

  Route<dynamic>? routeFactory(RouteSettings settings, String? uniqueId) {
    FlutterBoostRouteFactory? func = routerMap[settings.name];
    debugPrint("Log_fangpao name =${settings.name}---,func=$func");

    if (func == null) {
      return null;
    }
    return func(settings, uniqueId);
  }

  Widget appBuilder(Widget home) {
    return MaterialApp(
      home: home,
      debugShowCheckedModeBanner: true,
      builder: (_, __) {
        return home;
      },
    );
  }

  //注册的路由表
  Map<String, FlutterBoostRouteFactory> routerMap = {
    'settingPage': (settings, id) {
      return PageRouteBuilder<dynamic>(
          settings: settings,
          pageBuilder: (_, __, ___) => SettingPage(
                params: settings.arguments as Map<dynamic, dynamic>?,
              ));
    },
    'mainPage': (settings, id) {
      return PageRouteBuilder<dynamic>(
        settings: settings,
        pageBuilder: (_, __, ___) => FlutterRouteWidget(
          params: settings.arguments as Map<dynamic, dynamic>?,
          uniqueId: "uniqueId",
        ),
      );
    },
  };
}
