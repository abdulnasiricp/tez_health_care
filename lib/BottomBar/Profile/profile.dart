// import 'package:flutter/material.dart';

// class ProfilePagePage extends StatefulWidget {
//   const ProfilePagePage({super.key});

//   @override
//   State<ProfilePagePage> createState() => _ProfilePagePageState();
// }

// class _ProfilePagePageState extends State<ProfilePagePage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
      
//     );
//   }
// }

// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tez_health_care/Utils/helper_class.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: const Text('ProfilePage'),
            centerTitle: true,
            backgroundColor: Utils.appbarColor,
            foregroundColor: Utils.appbarForgroundColor,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Utils.bgColor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 20, right: 20),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Utils.containerColor,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1)),
                        child: Row(
                          children: [
                            Container(
                              width: 69,
                              height: 69,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/drtwo.png')),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 20)),
                                Text(
                                  "Dr.Push Puttical",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("0344-4343-3434"),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/person.png'),
                          ),
                        ),
                        title: const Text('ProfilePage'),
                      ),
                       ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/history.png'),
                          ),
                        ),
                        title: const Text('Q & A History'),
                      ),
                       ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/pin.png'),
                          ),
                        ),
                        title: const Text('Address'),
                      ),
                       ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/headset.png'),
                          ),
                        ),
                        title: const Text('Help Center'),
                      ),
                       ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/phone.png'),
                          ),
                        ),
                        title: const Text('Hotline'),
                      ),
                       ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/help.png'),
                          ),
                        ),
                        title: const Text('About Us'),
                      ),
                       ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/Schedule.png'),
                          ),
                        ),
                        title: const Text('Schedule'),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/darkmode.png'),
                          ),
                        ),
                        title: const Text('DarkMode'),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            child: Image.asset('assets/exit.png',color: Colors.red,),
                          ),
                        ),
                        title: const Text('Logout'),
                      ),
                
                    ],
                  ),
                )
              ],
            ),
          )
          // backgroundColor: notifier.getwihitecolor,
          );
  }
}
