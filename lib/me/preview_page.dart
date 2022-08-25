import 'package:flutter/material.dart';
import 'package:my_flutter_module/utils/ImageLoadUtil.dart';
import 'package:my_flutter_module/utils/router_hepler.dart';

class PreviewPage extends StatefulWidget {
  final String imageUrl;

  const PreviewPage(this.imageUrl, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "tagPreview",
      child: GestureDetector(
        onTap: () => RouterHelper.pop(context),
        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: ImageLoadUtil.loadImage(widget.imageUrl,
              width: double.infinity, fit: BoxFit.fitWidth),
        ),
      ),
    );
  }
}
