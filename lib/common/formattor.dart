
import 'package:intl/intl.dart';

String format2INR(dynamic amount, {bool removeAllAfterDecimal = true, int? decimalDigits}) {
  final numericAmt = double.tryParse('$amount');
  if (amount == null || amount == '') {
    return "-";
  }


  String formattedAmount = NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: decimalDigits)
      .format(numericAmt)
      .eliminateLast(removeLength: 3);

  if (removeAllAfterDecimal && decimalDigits == null) {
    formattedAmount = formattedAmount.split('.').first;
  }

  return formattedAmount;
}

extension StringExtendion on String? {
  String eliminateLast({required int removeLength}) {
    if (this != null && this?.isNotEmpty == true) {
      return '$this';
    }

    return this!.substring(0, this!.length - removeLength);
  }
}