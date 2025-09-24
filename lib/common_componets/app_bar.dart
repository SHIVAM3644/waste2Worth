import 'package:flutter/material.dart';
import 'core_blur_container.dart'; // your CoreBlurContainer file

class CoreBlurSliverAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool pinned;
  final bool floating;
  final double expandedHeight;

  const CoreBlurSliverAppBar({
    Key? key,
    required this.title,
    this.backgroundColor = const Color(0xBFFFFFFF),
    this.actions,
    this.centerTitle = true,
    this.pinned = true,
    this.floating = false,
    this.expandedHeight = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      floating: floating,
      expandedHeight: expandedHeight,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: CoreBlurContainer.expand(
        blur: 12,
        color: backgroundColor,
        borderRadius: BorderRadius.zero,
        padding: EdgeInsets.zero,
        child: SafeArea(
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.black,
                fontSize: 18,
                
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      actions: actions,
    );
  }
}
