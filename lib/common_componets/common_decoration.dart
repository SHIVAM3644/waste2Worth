import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';
import 'package:waste2worth/common/core_colors.dart';

class CoreBoxDecoration {
  static BoxDecoration getBoxDecoration({
    double borderRadius = 20,
    Color color = Colors.white,
    bool removeShadow = false,
    bool addBorder = false,
    Border? border,
    Gradient? gradient,
    BoxShape shape = BoxShape.rectangle,
    List<BoxShadow> boxShadow = const [
      BoxShadow(offset: Offset(0, 6), blurRadius: 16, color: CoreColors.blackEel20)
    ],
  }) {
    return BoxDecoration(
      gradient: gradient,
      borderRadius: shape == BoxShape.circle ? null : BorderRadius.circular(borderRadius),
      color: color,
      shape: shape,
      border: addBorder == true
          ? border ??
              Border.all(
                width: 1,
                color: CoreColors.toryBlue,
              )
          : null,
      boxShadow: removeShadow == false ? boxShadow : null,
    );
  }

  static ShapeDecoration getSmoothBoxDecoration({
    double borderRadius = 12,
    BorderRadiusGeometry? borderRadiusGeometry,
    Color? color ,
    BorderSide? side,
    Gradient? gradient,
    DecorationImage? image,
    BoxShape shape = BoxShape.rectangle,
    List<BoxShadow>? shadows,
  }) {
    return ShapeDecoration(
      gradient: gradient,
      color: gradient == null ? (color ?? Colors.white ): null, // fallback only if gradient is null
      shape: SmoothRectangleBorder(
        borderRadius: borderRadiusGeometry?? BorderRadius.circular(borderRadius),
        smoothness: 1,
        side: side ?? BorderSide.none,
      ),
      image: image,
      shadows: shadows,
    );
  }

  static BoxDecoration getPortfolioBoxDecoration({
    double borderRadius = 16,
    Color color = Colors.white,
    double borderWidth = 1,
    Color borderColor = CoreColors.silverChalice,
    double spreadRadius = 0,
    double blurRadius = 12,
    bool showShadow = true,
    Color shadowColor = CoreColors.black04,
    double offsetX = 0,
    double offsetY = 4,
  }) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: color,
      border: Border.all(
        width: borderWidth,
        color: borderColor,
      ),
      boxShadow: [
        if (showShadow)
          BoxShadow(
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
            color: shadowColor,
            offset: Offset(offsetX, offsetY),
          ),
      ],
    );
  }
}

