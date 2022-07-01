import 'package:basic_website/components/desktop_body.dart';
import 'package:basic_website/components/mobile_body.dart';
import 'package:basic_website/components/nav_bar.dart';
import 'package:basic_website/responsive/responsive.dart';
import 'package:flutter/material.dart';

class WebsiteWrapper extends StatelessWidget {
  const WebsiteWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isDesktop(context) ? 120 : 30,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/back-image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          NavBar(),
          Responsive(
            mobile: MobileBody(),
            desktop: DesktopBody(),
          ),
        ],
      ),
    );
  }
}
