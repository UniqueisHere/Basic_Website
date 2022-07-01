import 'package:flutter/material.dart';

class WebPic extends StatelessWidget {
  const WebPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/pic.png',
      bundle: null,
      width: 530,
    );
  }
}
