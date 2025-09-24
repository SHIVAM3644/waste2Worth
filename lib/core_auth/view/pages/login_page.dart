import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common_componets/commom_button.dart';
import 'package:waste2worth/common_componets/common_text.dart';
import 'package:waste2worth/common_componets/common_textformfield.dart';
import 'package:waste2worth/core_auth/view/pages/forget_password.dart';
import 'package:waste2worth/core_auth/view/pages/signUp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.wifi_protected_setup_sharp,
                size: 100,
                color: Colors.green,
              ),
              Text(
                'Smart Waste',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              // Text('Login to your account'),
              CommonText(text: 'Login to your account'),
              SizedBox(height: 40),

              CommonTextFormField(
                controller: null,
                hintText: 'Email or username',
                prefixIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 20),

              CommonTextFormField(
                controller: null,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(ForgetPassword());
                    },
                    child: Text(
                      'Forgtet Password ?',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              CommomButton(
                text: 'Login',
                onPressed: () {},
                color: Colors.green,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?'),
                  TextButton(
                    onPressed: () {
                      Get.to(SignupPage());
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
