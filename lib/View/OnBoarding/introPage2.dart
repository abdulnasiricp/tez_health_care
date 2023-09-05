// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  
                  Container(width: double.infinity,
                    child: const Image(image: AssetImage('assets/onbondingtwo.png'),fit: BoxFit.cover,)),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Container(
                              alignment: Alignment.topCenter,
                              child: const Text('Essential  qualities of a good doctor',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                        ),
                        const SizedBox(height: 20,),
                        const Text('Good doctors are empathetic and \n   make patients feel cared for..',
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
