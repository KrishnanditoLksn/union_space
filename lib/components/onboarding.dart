import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:union_space/data/onboarding_list.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Onboarding();
  }
}

class _Onboarding extends State<Onboarding> {
  final controller = OnboardingList();
  final pages = PageController();
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [body()]));
  }

  Widget body() {
    return Expanded(
      child: Center(
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              currIndex = value;
            });
          },
          itemCount: controller.items.length,
          itemBuilder: (ctx, idx) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(controller.items[currIndex].image),
                  Text(
                    controller.items[currIndex].title,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Color(0xFF404040),
                      fontWeight: FontWeight.w600,
                      height: 1.25,
                    ),
                  ),
                  Text(controller.items[currIndex].description),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
