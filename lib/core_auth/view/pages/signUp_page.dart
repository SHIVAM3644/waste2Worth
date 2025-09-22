import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_rounded),

                  // labelText: 'Email',
                  hintText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),

                  // labelText: 'Email',
                  hintText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),

                  // labelText: 'Email',
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_reset_sharp),

                  // labelText: 'Email',
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.maxFinite, 45),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                child: Text('Login', style: TextStyle(color: Colors.white)),
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
