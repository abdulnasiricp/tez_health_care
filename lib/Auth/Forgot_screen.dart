// ignore_for_file: file_names sized_box_for_whitespace, non_constant_identifier_names, avoid_types_as_parameter_names, file_names, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/Helper_class.dart';
import '../Utils/My_button.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var isloading = false;

  // void ForgotEmail() async {
  //   try {
  //     isloading = true;
  //   if (formKey.currentState!.validate()) {
  //     await FirebaseAuth.instance
  //         .sendPasswordResetEmail(
  //             email: emailController.text.trim(),
  //             )
  //         .then(
  //           (value) => Utils().toastmassage('Please check your Email '),
  //         )
  //         .then((value) => Get.to(() => const SignInScreen()));

  //     emailController.clear();
  //   }
      
  //   }on FirebaseAuthException catch (e) {
  //     Utils().toastmassage('$e');
      
  //   }
    
    
  // }
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Utils.scaffoldBackgroundColor,
        appBar: AppBar(
          title: const Text('Forgot Password'),
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
                  height: 300,
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
                          
                        
                          Padding(
                            padding: const EdgeInsets.only(top:30),
                            child: TextFormField(
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
                          ),
                         
                          const SizedBox(
                            height: 30,
                          ),
                          
                          Container(
                              width: double.infinity,
                              height: 50,
                              child: MyButton(
                                title: isloading
                                    ? const CircularProgressIndicator()
                                    : const Text('Forgot'),
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
             
            ],
          ),
        ),
      ),
    );
  }
}
