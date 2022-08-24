import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lifecycle_aware/lifecycle.dart';
import 'package:my_flutter_module/me/me_view_model.dart';
import 'package:my_flutter_module/me/preview_page.dart';
import 'package:my_flutter_module/utils/ImageLoadUtil.dart';
import 'package:my_flutter_module/utils/router_hepler.dart';
import 'package:my_flutter_module/utils/screen_util.dart';
import 'package:provider/provider.dart';

class MainMePage extends StatefulWidget {
  const MainMePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainMePageState();
}

class _MainMePageState extends State<MainMePage> with Lifecycle {
  final MeViewModel meViewModel = MeViewModel();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => meViewModel)],
      builder: (context, child) {
        return Scaffold(
          ///一个路由页的骨架
          body: _bodyContent(context, meViewModel),
        );
      },
    );
  }

  Widget _bodyContent(BuildContext context, MeViewModel meViewModel) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _headerContent(context, meViewModel),
          _centerContent(context, meViewModel)
        ],
      ),
    );
  }

  /// 中间列表
  Widget _centerContent(BuildContext context, MeViewModel meViewModel) {
    return Column(
      children: [
        /// 收藏
        _itemWidgetDefault(context, () => {}, Icons.favorite_border, "收藏",
            Icons.chevron_right),

        _itemWidgetSwitch(context, (value) {
          meViewModel.darkMode = value;
        }, meViewModel.darkMode ? Icons.brightness_2 : Icons.brightness_5,
            "暗黑模式", meViewModel.darkMode),

        _itemWidgetExpansion(
            "彩色主题", Icons.color_lens, _itemChildTheme(meViewModel)),

        _itemWidgetExpansion(
            "切换语言",
            Icons.language,
            _itemChildLanguage(meViewModel, onChanged: (value) {
              if (value != null) {
                meViewModel.localIndexValue = value;
              }
            }))
      ],
    );
  }

  /// 多语言
  Widget _itemChildLanguage(MeViewModel meViewModel,
      {required ValueChanged<int?> onChanged}) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
                value: 0,
                groupValue: meViewModel.localIndexValue,
                onChanged: onChanged),
            const Text("中文", style: TextStyle(fontSize: 14))
          ],
        ),
        Row(
          children: [
            Radio(
                value: 1,
                groupValue: meViewModel.localIndexValue,
                onChanged: onChanged),
            const Text("英文", style: TextStyle(fontSize: 14))
          ],
        )
      ],
    );
  }

  /// 彩色主题
  Widget _itemChildTheme(MeViewModel meViewModel) {
    // 流式布局
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        ...Colors.primaries.map((color) {
          int index = Colors.primaries.indexOf(color);
          return Material(
            color: color,
            child: InkWell(
              onTap: () {
                meViewModel.themeIndex = index;
              },
              child: SizedBox(
                height: 40,
                width: 40,
                child: meViewModel.themeIndex == index
                    ? const Icon(Icons.check)
                    : null,
              ),
            ),
          );
        }).toList()
      ],
    );
  }

  /// 列表item：抽屉式 --> 切换语言、彩色主题
  Widget _itemWidgetExpansion(String title, IconData icon, Widget child) {
    return ExpansionTile(
      title: Text(title),
      leading: Icon(icon),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: child,
        )
      ],
    );
  }

  /// 列表item：开关样式
  Widget _itemWidgetSwitch(BuildContext context, ValueChanged<bool> onChanged,
      IconData leftIcon, String title, bool switchValue) {
    return InkWell(
      onTap: () => {},
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(leftIcon),
            const SizedBox(width: 20),
            Expanded(child: Text(title)),
            CupertinoSwitch(value: switchValue, onChanged: onChanged)
          ],
        ),
      ),
    );
  }

  /// 列表item：默认样式
  Widget _itemWidgetDefault(BuildContext context, GestureTapCallback onTap,
      IconData leftIcon, String title, IconData rightIcon) {
    return InkWell(
      /// 用 InkWell 或者 GestureDetector 将某个组件包起来，可添加点击事件
      onTap: onTap,
      splashColor: Colors.grey[300],
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(leftIcon),
            const SizedBox(width: 20),
            Expanded(
                // Text 填充完剩下的空间
                child: Text(title,
                    style: Theme.of(context).textTheme.titleMedium)),
            Icon(rightIcon)
          ],
        ),
      ),
    );
  }

  /// 头部内容
  Widget _headerContent(BuildContext context, MeViewModel meViewModel) {
    double topBarHeight =
        ScreenUtil.get().appBarHeight + ScreenUtil.get().statusBarHeight;

    return Container(
      // 组合类容器
      color: Theme.of(context).colorScheme.primary,
      width: double.infinity,
      child: Consumer<MeViewModel>(
        builder: (context, viewModel, child) {
          return Stack(
            children: [
              Center(
                /// 用户信息
                child: Column(
                  children: [
                    SizedBox(height: topBarHeight),
                    GestureDetector(
                      onTap: () => {},
                      child: Hero(
                        tag: "tagPreview",
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: viewModel.hasLogin
                                ? ImageLoadUtil.loadImage(
                                    meViewModel.userInfo.icon ?? "",
                                    height: 90,
                                    width: 90)
                                : const Icon(
                                    Icons.account_circle,
                                    size: 90,
                                    color: Colors.black,
                                  )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      viewModel.hasLogin
                          ? viewModel.userInfo.nickname ?? ""
                          : "登录",
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),

                    /// 积分
                    Visibility(
                        visible: viewModel.hasLogin,
                        child: Text("积分：${viewModel.userInfo.coinCount}")),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Positioned(
                /// 退出登录
                child: Offstage(
                  offstage: !viewModel.hasLogin,
                  child: GestureDetector(
                    child: const Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  ///  点击事件
  void actionUserIcon(BuildContext context, MeViewModel meViewModel) async {
    if (meViewModel.hasLogin) {
      // 放大
      RouterHelper.push(context, PreviewPage(meViewModel.userInfo.icon ?? ""),
          fullscreenDialog: true);
    } else {
      // 去登录

    }
  }
}
