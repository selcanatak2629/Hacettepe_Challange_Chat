import 'package:flutter/material.dart';
import 'package:proje10/core/enum/duration_enum.dart';

class ImageOpacity extends StatefulWidget {
  final String url;
  const ImageOpacity({Key? key, required this.url}) : super(key: key);
  @override
  _ImageOpacity createState() => _ImageOpacity();
}

class _ImageOpacity extends State<ImageOpacity> {
  final bool _isOpacity = false;
  @override
  void initState() {
   
    super.initState();
  }

  Future<void> waitForTime(args) async {
    await Future.delayed(DurationEnums.NORMAL.time());
  }

  double get opacityValue => _isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isOpacity ? 0 : 1,
      duration: DurationEnums.HIGH.time(),
      child: Image.network(widget.url),
    );
  }
}
