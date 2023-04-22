import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //logo
        Padding(
          padding:
              const EdgeInsets.only(top: 50, right: 80, left: 80, bottom: 20),
          child: Image.asset('lib/images/avocado.png'),
        ),

        Padding(
          padding: EdgeInsets.all(26.0),
          child: Text(
            "we deliver Groceries at your door steps",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //we deeliver fresh items
        const SizedBox(height: 20),

        //fresh items every day
        Text(
          "Fresh Items Everyday",
          style: TextStyle(color: Colors.grey),
        ),

        const Spacer(),

        //get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              )),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple.shade800,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(24),
            child: const Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}
