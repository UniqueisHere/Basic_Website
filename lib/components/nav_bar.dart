import 'package:basic_website/components/custom_button.dart';
import 'package:basic_website/responsive/responsive.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Row(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 120,
              ),
              const Spacer(),
              const Text('Features'),
              const SizedBox(width: 25),
              const Text('How it works'),
              const SizedBox(width: 25),
              const Text('Privacy'),
              const Spacer(),
              const Text('Log in'),
              const SizedBox(width: 20),
              CustomButton(
                buttonName: 'Download App',
                onPressed: () {},
              ),
            ],
          )
        : Row(
            children: const [
              Icon(Icons.menu),
            ],
          );
  }
}
