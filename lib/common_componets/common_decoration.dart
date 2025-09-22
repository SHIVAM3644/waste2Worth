import 'package:flutter/material.dart';

class CommonDecoration {
  static BoxDecoration coreBoxDecoration({BorderRadius? borderRadius,double radius = 16,Border? border,Color? color,Gradient? gradient,BoxShape? boxshape}) {
    return BoxDecoration(
      color: color??Colors.white,
      borderRadius: borderRadius??BorderRadius.circular(radius),
      border:border,
      gradient: gradient,
      shape:boxshape?? BoxShape.rectangle,

    );
  }
}
