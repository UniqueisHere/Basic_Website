import 'package:basic_website/components/information.dart';
import 'package:basic_website/components/web_pic.dart';
import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
          WebPic(),
          Information(),
        ],
      ),
    );
  }
}
