import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({this.params, this.message, this.uniqueId});

  final Map? params;
  final String? message;
  final String? uniqueId;

  @override
  State<SettingPage> createState() => RegisterRouteWidgetState();
}

class RegisterRouteWidgetState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("设置"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20),
              child: const Text(
                "账号绑定",
                style: TextStyle(fontSize: 16.0, color: Colors.white70),
              ),
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.red,
                    child: const Text(
                      '手机绑定',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  onTap: () => {},
                ),
                const Text(
                  '手机号：158xxx9761 >',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.red,
                    child: const Text(
                      '支付宝绑定',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  onTap: () => {},
                ),
                const Text(
                  'wjc1111 >',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
