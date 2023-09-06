// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../Utils/helper_class.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        backgroundColor: Utils.appbarColor,
          foregroundColor: Utils.appbarForgroundColor,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Center(
            child:Container(
              width: double.infinity,
              height: 120,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text('The Doctor has Ended his consultation',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('Your consultation is timed and finished,\n Please rate us so can serve you better!',style: TextStyle(fontSize: 10),),
                      ],
                    ),
                  ),
                ),
                
              ),
            ) ,
          )
        ]),
      ),
    );
  }
}