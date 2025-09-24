
import 'dart:ui';
import 'package:flutter/material.dart';

class CoreBlurContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final double elevation;
  final double blur;
  final EdgeInsetsGeometry padding;
  final Color color;
  final BorderRadius borderRadius;

  const CoreBlurContainer({
    Key? key,
    required this.child,
    this.height,
    this.width,
    this.blur = 5,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(8),
    this.color = Colors.transparent,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) : super(key: key);

  const CoreBlurContainer.square({
    Key? key,
    required this.child,
    double? dimension,
    this.blur = 5,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(8),
    this.color = Colors.transparent,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  })  : width = dimension,
        height = dimension,
        super(key: key);



  const CoreBlurContainer.expand({
    Key? key,
    required this.child,
    this.blur = 5,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(8),
    this.color = Colors.transparent,
    this.borderRadius = BorderRadius.zero,
  })  : width = double.infinity,
        height = double.infinity,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            height: height,
            width: width,
            padding: padding,
            color: color,
            child: child,
          ),
        ),
      ),
    );
  }
} ///




// class CoreDarkAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CoreDarkAppBar({
//     super.key,
//     required this.backgroundColor,
//     this.backButton = false,
//     this.showSearch = false,
//     this.title,
//     this.actionList,
//     this.color,
//     this.textColors,
//     this.addBlur = true,
//   });

//   final Color backgroundColor;
//   final bool backButton;
//   final Color? color;
//   final Color? textColors;
//   final bool showSearch;
//   final String? title;
//   final bool addBlur;
//   final List<Widget>? actionList;

//   @override
//   Widget build(BuildContext context) {
//     final widget = AppBar(
//       centerTitle: true,
//       foregroundColor: CoreDesignSystem.instance.text1,
//       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//       titleTextStyle: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
//       leading: backButton
//           ? null
//           : Padding(
//               padding: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
//               child: CoreCurrentImage(
//                 backgroundColor: color,
//                 foregroundColor: textColors,
//               ),
//             ),
//       title: showSearch
//           ? GestureDetector(
//               onTap: () {
//                 CoreNavigator.pushNamed(CoreRoutePaths.coreSearch);
//               },
//               child: Container(
//                 height: 32,
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 margin: const EdgeInsets.only(top: 4),
//                 decoration: BoxDecoration(
//                   color: color ??
//                       (CoreDesignSystem.instance.isDark ? Colors.white12 : CoreColors.whiteSmoke),
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.search,
//                       color: textColors ?? CoreDesignSystem.instance.text1,
//                       size: 16,
//                     ),
//                     const SizedBox(width: 7),
//                     Text(
//                       "Search",
//                       style: TextStyle(
//                           fontSize: 11,
//                           fontWeight: FontWeight.w400,
//                           color: textColors ?? CoreDesignSystem.instance.text1),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           : title != null
//               ? Text(
//                   title!,
//                   style: TextStyle(color: textColors ?? CoreDesignSystem.instance.text1),
//                 )
//               : null,
//       actions: actionList,
//       leadingWidth: 48,
//       elevation: 0,
//       scrolledUnderElevation: 0,
//       surfaceTintColor: Colors.transparent,
//       backgroundColor: backgroundColor,
//     );

//     if (addBlur) {
//       return CoreBlurContainer(
//         elevation: 0,
//         blur: 12,
//         borderRadius: BorderRadius.zero,
//         padding: EdgeInsets.zero,
//         child: widget,
//       );
//     }

//     return widget;
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(58);
// }