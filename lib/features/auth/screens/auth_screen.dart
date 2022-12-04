import 'package:flutter/material.dart';
import 'package:product_arena/features/auth/screens/widgets/custom_button.dart';
import 'package:product_arena/features/auth/screens/widgets/custom_textfield.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  final _signInFormKey = GlobalKey<FormState>();

   final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
         
         body: Container(
                    padding: const EdgeInsets.all(8),
                     child: Form(
                      key: _signInFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                              'assets/images/Vector.png',
                             width: 323,
                             height: 70,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            controller: _emailController,
                            hintText: 'Email',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            controller: _passwordController,
                            hintText: 'Password',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomButton(
                            text: 'Sign In',
                            onTap: () {
                              if (_signInFormKey.currentState!.validate()) {
                               // signInUser();
                              }
                            },
                          ),
                        ],
                       ),
                     ),
                  ),
      
    );
  }
}