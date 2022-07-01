import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
    this.tablet,
  }) : super(key: key);

  static bool isDesktop(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= 1200;
  }

  static bool isMobile(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= 360 && screenWidth < 680;
  }

  static bool isTablet(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= 680 && screenWidth < 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        if (width >= 1200) {
          return desktop;
        } else if (width >= 680 && width < 1200) {
          return tablet ?? desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
