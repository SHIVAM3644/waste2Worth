import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showBackButton;
  final List<Widget>? actions;
  final Color? appBarColor;
  final Color? bodyColor;

  const CommonScaffold({
    Key? key,
    required this.title,
    required this.body,
    this.showBackButton = true,
    this.actions,
    this.appBarColor,
    this.bodyColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor ?? Colors.white,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: appBarColor ?? Colors.white,
        automaticallyImplyLeading: showBackButton,
        actions: actions,
        centerTitle: true,
      ),
      body: body,
    );
  }
}
