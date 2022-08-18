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
      appBar: AppBar(
        title: const Text("设置"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 8.0, top: 10.0, bottom: 20),
                child: const Text("账号绑定"),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: const Text(
                    '手机绑定',
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                ),
                onTap: () => {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
