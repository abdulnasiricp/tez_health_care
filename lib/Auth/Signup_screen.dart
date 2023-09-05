// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tez_health_care/Auth/Forgot_screen.dart';
import 'package:tez_health_care/Auth/SignInScreen.dart';
import 'package:tez_health_care/Utils/My_button.dart';
import 'package:tez_health_care/Utils/helper_class.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var isloading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Utils.scaffoldBackgroundColor,
        appBar: AppBar(
          title: const Text('Sign Up'),
          centerTitle: true,
          backgroundColor: Utils.appbarColor,
          foregroundColor: Utils.appbarForgroundColor,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Utils.bgColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Utils.containerColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Name';
                              } else if (!value.contains('@')) {
                                return 'please enter valid Name';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            onTapOutside: (event) =>
                                FocusScope.of(context).unfocus(),
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                prefixIconColor: Colors.blue,
                                hintText: 'Enter Your Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              } else if (!value.contains('@')) {
                                return 'please enter valid email';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            onTapOutside: (event) =>
                                FocusScope.of(context).unfocus(),
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.phone),
                                prefixIconColor: Colors.blue,
                                hintText: 'Enter email and phone number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter your password';
                              } else {
                                return null;
                              }
                            },
                            obscureText: true,
                            controller: passwordController,
                            onTapOutside: (event) =>
                                FocusScope.of(context).unfocus(),
                            decoration: InputDecoration(
                                hintText: 'Enter Password',
                                prefixIcon: const Icon(Icons.lock),
                                prefixIconColor: Colors.blue,
                                suffixIcon: const Icon(Icons.visibility),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                         
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: double.infinity,
                              height: 50,
                              child: MyButton(
                                title: isloading
                                    ? const CircularProgressIndicator()
                                    : const Text('Sign Up'),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {}
                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
             
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.7,left: 20,right: 20),
                    
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          child: Container(height: 40,
                            child: Image.asset('assets/google.png',)),
                        ),
                        const Text('Google'),
                        Card(
                          child: Container(height: 40,
                            child: Image.asset('assets/apple.png',)),
                        ),
                        const Text('Apple')
                      ],
                    ),
                    
                  ],
                ),
              ),
               Padding(
                 padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 1.4,
                  ),
                 child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account"),
                          TextButton(
                              onPressed: () {
                                Get.to(() => const SignInScreen());
                              },
                              child: const Text('Sign In')),
                        ],
                      ),
                    ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
