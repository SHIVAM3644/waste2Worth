import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common_componets/commom_button.dart';
import 'package:waste2worth/core_auth/view/pages/reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final double ht = Get.height;
    final double wd = Get.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.c,
          children: [
            Text(
              'Forget Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: ht * 0.01),
            Text('Enter the email address associated with your'),
            Text('account'),
            SizedBox(height: ht * 0.1),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 30),
            CommomButton(
              text: 'Send Reset Link',
              onPressed: () {
                Get.to(ResetPassword());
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
