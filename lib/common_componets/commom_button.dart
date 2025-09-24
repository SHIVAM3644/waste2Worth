import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common/core_colors.dart';

class CommomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textcolor;
  // const double height;
  // final double width;
  final double radius;

  const CommomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.textcolor = CoreColors.white,
    // this.height=Get.height*04,
    // required this.width,
    this.radius = 12,
  });

  @override
  Widget build(BuildContext context) {
    double buttonHeight = Get.height * 0.055; // 6% of screen height
    double buttonWidth = Get.width * 0.9;
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
