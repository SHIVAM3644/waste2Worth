import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common_componets/commom_button.dart';
import 'package:waste2worth/common_componets/common_scaffold.dart';
import 'package:waste2worth/common_componets/common_text.dart';
import 'package:waste2worth/core_auth/view/pages/login_page.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: '',
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green[100],
              radius: 50,
              child: Icon(
                Icons.task_alt_outlined,
                color: Colors.green,
                size: 40,
              ),
            ),
            SizedBox(height: 20),
            CommonText(
              text: 'Password Reset !',
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
            CommonText(text: 'Your password has been successfully Reset '),
            SizedBox(height: 40),

            CommomButton(
              text: 'Back to Login',
              onPressed: () {
                Get.to(LoginPage());
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
