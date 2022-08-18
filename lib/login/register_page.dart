import 'package:flutter/cupertino.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({this.params, this.message, this.uniqueId});

  final Map? params;
  final String? message;
  final String? uniqueId;

  @override
  State<RegisterPage> createState() => RegisterRouteWidgetState();
}

class RegisterRouteWidgetState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
