import 'package:basic_website/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatelessWidget {
  const Information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Make \nNew Friends.',
            style: GoogleFonts.sahitya(
              fontSize: 68,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Socially is a new social media platform to make new friends online in the \nworld. Now let's explore all it's amazing features.",
          ),
          const SizedBox(height: 20),
          CustomButton(
            buttonName: 'Join Now',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
