import 'package:basic_website/components/information.dart';
import 'package:basic_website/components/web_pic.dart';
import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const [
          Information(),
          WebPic(),
        ],
      ),
    );
  }
}
