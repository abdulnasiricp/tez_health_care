// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                      width: double.infinity,
                      child: const Image(
                          image: AssetImage('assets/onbondingone.png'),fit: BoxFit.cover)),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            child: const Text('Inspiring Quotes for Doctors',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(height: 20,),
                      const Text('Wherever the art of Medicine is loved,\n   there is also a love of Humanity',
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
