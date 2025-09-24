import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common_componets/commom_button.dart';
import 'package:waste2worth/common_componets/common_textformfield.dart';
import 'package:waste2worth/core_auth/view/pages/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                'Create Account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text('Join the Smart Waste Management'),
              SizedBox(height: 40),

              CommonTextFormField(
                controller: null,
                hintText: 'Full Name',
                prefixIcon: Icon(Icons.person_3_outlined),
              ),
              SizedBox(height: 20),

              CommonTextFormField(
                controller: null,
                hintText: 'Email Address',
                prefixIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 20),

              CommonTextFormField(
                controller: null,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
              ),
              SizedBox(height: 20),
              CommonTextFormField(
                controller: null,
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock_reset),
              ),
              SizedBox(height: 10),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(value: isBlank, onChanged: (value) {}),
                  Text('I agree to the', style: TextStyle()),
                  Text(
                    ' Terms & Conditions ',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(height: 10),

              CommomButton(
                text: 'Sign up',
                onPressed: () {},
                color: Colors.green,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account ?'),
                  TextButton(
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                    child: Text('Login', style: TextStyle(color: Colors.green)),
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
