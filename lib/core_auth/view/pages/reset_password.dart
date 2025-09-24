import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common_componets/commom_button.dart';
import 'package:waste2worth/common_componets/common_scaffold.dart';
import 'package:waste2worth/common_componets/common_text.dart';
import 'package:waste2worth/common_componets/common_textformfield.dart';
import 'package:waste2worth/core_auth/view/pages/password_reset.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Reset Password',
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CommonText(
              text: 'Create a new password for your account. Make',

              // fontSize: 14,
            ),
            CommonText(text: 'sure its strong and secure'),
            SizedBox(height: Get.height * 0.07),
            CommonTextFormField(
              controller: null,
              hintText: 'New Password',
              prefixIcon: Icon(Icons.lock_outline),
            ),
            SizedBox(height: 20),
            CommonTextFormField(
              controller: null,
              hintText: 'Confirm New Password',
              prefixIcon: Icon(Icons.lock_reset),
            ),
            SizedBox(height: 30),
            CommomButton(
              text: 'Reset Password',
              onPressed: () {
                Get.to(PasswordReset());
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
