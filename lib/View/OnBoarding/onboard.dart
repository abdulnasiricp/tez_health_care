import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tez_health_care/Auth/SignInScreen.dart';
import 'package:tez_health_care/View/OnBoarding/introPage1.dart';
import 'package:tez_health_care/View/OnBoarding/introPage2.dart';
import 'package:tez_health_care/View/OnBoarding/introPage3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onlastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
            onPageChanged: (index) {
              setState(() {
                onlastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ]),
        Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text('Skip',
                        style: TextStyle(color: Colors.white))),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                onlastPage
                    ? TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                          Get.to(() => const SignInScreen());
                        },
                        child: const Text('Done',
                            style: TextStyle(color: Colors.white)))
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text('Next',
                            style: TextStyle(color: Colors.white))),
              ],
            ))
      ]),
    );
  }
}

