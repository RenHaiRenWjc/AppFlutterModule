import 'package:flutter/material.dart';
import 'package:flutter_lifecycle_aware/lifecycle.dart';
import 'package:my_flutter_module/me/me_view_model.dart';
import 'package:my_flutter_module/utils/ImageLoadUtil.dart';
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
          body: _bodyContent(context, meViewModel),
        );
      },
    );
  }

  Widget _bodyContent(BuildContext context, MeViewModel meViewModel) {
    return SingleChildScrollView(
      child: Column(
        children: [_headerContent(context, meViewModel)],
      ),
    );
  }

  Widget _headerContent(BuildContext context, MeViewModel meViewModel) {
    double topBarHeight = ScreenUtil.get().appBarHeight + ScreenUtil.get().statusBarHeight;

    return Container(
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
                    SizedBox(
                      height: topBarHeight,
                    ),
                    GestureDetector(
                      onTap: () => {},
                      child: Hero(
                        tag: "tagPreview",
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: viewModel.hasLogin
                                ? ImageLoadUtil.loadImage(meViewModel.userInfo.icon ?? "", height: 90, width: 90)
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
                      viewModel.hasLogin ? viewModel.userInfo.nickname ?? "" : "Login",
                      style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),

                    /// 积分
                    Visibility(visible: viewModel.hasLogin, child: Text("积分：${viewModel.userInfo.coinCount}")),
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
}
