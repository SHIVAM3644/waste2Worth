
import 'package:flutter/material.dart';
import 'package:waste2worth/common/core_colors.dart';

extension NumExtensions on num? {
  String toPercent({bool removeDecimal = false}) {
    try {
      if (this != null) {
        String originalString = '$this';

        if (originalString.contains('%')) {
          return originalString;
        }

        if (originalString.contains('.')) {
          List<String> parts = originalString.split('.');

          if (removeDecimal) {
            return '${parts[0]}%';
          }
          if (parts.length == 2) {
            String decimalPart =
            parts[1].length >= 2 ? parts[1].substring(0, 2) : parts[1].padRight(2, '0');
            return '${parts[0]}.$decimalPart%';
          }
        }

        return '$originalString%';
      } else {
        return '-';
      }
    } catch (e) {
      debugPrint("Error: Input is not a valid number");
      return '-';
    }
  }

  int getMinLength({int min = 5}) {
    if (this == null) {
      return 0;
    }

    if (this! <= min) {
      return this!.toInt();
    }

    return min;
  }

  Color toColor({bool isDark = false,Color? color}) {

    if(this == null) return Colors.grey;

    if(isDark ){
      if(this! >= 0){
        return color?? CoreColors.shareGreen;
      }else{
        return  CoreColors.cadmiumRed;
      }
    }
    if (this == null) {
      return Colors.grey;
    } else if (this! < 0) {
      return Colors.red;
    } else {
      return CoreColors.shareGreen;
    }
  }

  Color toThemeColor({bool isDark = false,Color? color}) {

    if(this == null) return Colors.grey;

   
      if(this! >= 0){
        return color?? CoreColors.shareGreen;
      }else{
        return  CoreColors.cadmiumRed;
      }
   

  }

  Color toBackgroundColor() {
    if (this == null) {
      return Colors.grey;
    } else if (this! < 0) {
      return CoreColors.forgotMeNot;
    } else {
      return CoreColors.paleLightGreen;
    }
  }


  Color toThemeBackgroundColor() {
    if (this == null) {
      return Colors.grey;
    } else if (this! < 0) {
      return CoreColors.forgotMeNot;
    } else {
      return const Color(0x3324F000);
    }
  }

  Color stockToColor() {
    if (this == null) {
      return Colors.grey;
    } else if (this! < 0) {
      return const Color(0xFFDE5833);
    } else {
      return CoreColors.shareGreen;
    }
  }
}
