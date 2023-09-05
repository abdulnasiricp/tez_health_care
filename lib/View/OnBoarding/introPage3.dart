// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  
                  Container(
                    width: double.infinity,
                    child: const Image(image: AssetImage('assets/onbondingthree.png'),fit: BoxFit.cover)),
                    Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            child: const Text("National Doctor's Day",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(height: 20,),
                      const Text("National Doctor's Day 2023: Here's The inspiring Story\n                of Nepal First Female Doctor",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.normal))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
