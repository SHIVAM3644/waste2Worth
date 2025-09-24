import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ShowMoreText extends StatefulWidget {
  final String text;
  final int trimLength;
  final Color? buttonColor;
  final Color? textColor;

  const ShowMoreText({
    super.key,
    required this.text,
    this.trimLength = 100,
    this.buttonColor,
    this.textColor,
  });

  @override
  State<ShowMoreText> createState() => _ShowMoreTextState();
}

class _ShowMoreTextState extends State<ShowMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final defaultTextColor = widget.textColor ?? Colors.black;
    final buttonColor = widget.buttonColor ?? Theme.of(context).primaryColor;

    // If text is shorter than trimLength → show full text without button
    if (widget.text.length <= widget.trimLength) {
      return Text(
        widget.text,
        style: TextStyle(color: defaultTextColor),
      );
    }

    String displayText = isExpanded
        ? widget.text
        : "${widget.text.substring(0, widget.trimLength)}...";

    return RichText(
      text: TextSpan(
        text: displayText,
        style: TextStyle(color: defaultTextColor),
        children: [
          TextSpan(
            text: isExpanded ? " Show less" : " Show more",
            style: TextStyle(
              color: buttonColor,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
          ),
        ],
      ),
    );
  }
}
