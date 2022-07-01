import 'package:basic_website/components/website_wrapper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebsiteWrapper(),
    );
  }
}
