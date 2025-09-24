

// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class CoreDesignSystem {
//   CoreDesignSystem._();
//   static final CoreDesignSystem instance = CoreDesignSystem._();
//   bool get isDark => getEnhanceUIStatus();


//   Color get background => getEnhanceUIStatus() ? Colors.black : CoreColors.desertStormAlt1;
//   Color get inverseBackground => getEnhanceUIStatus() ? CoreColors.desertStormAlt1 : Colors.black;

//   Color get surface => getEnhanceUIStatus() ? Colors.white12 : Colors.white;
//   Color get surfaceOnSurface => getEnhanceUIStatus() ? CoreColors.thunder : CoreColors.whiteSmoke;

//   Color get inverseSurface => getEnhanceUIStatus() == false ? Colors.white12 : Colors.white;

//   Color get text1 => getEnhanceUIStatus() ? Colors.white : Colors.black;
//   Color get text2 => getEnhanceUIStatus() ? CoreColors.white50 : CoreColors.cadetGrey;
//   Color get text3 => getEnhanceUIStatus() ? CoreColors.white50 : CoreColors.concord;

//   Color get inverseText1 => getEnhanceUIStatus() ? Colors.black : Colors.white;
//   Color get inverseText2 => getEnhanceUIStatus() ? CoreColors.cadetGrey : CoreColors.white50;

//   Color get success => getEnhanceUIStatus() ? CoreColors.vibrantGreen : CoreColors.shareGreen;
//   Color get failed => CoreColors.redPink;

//   Color get primary => CoreColors.toryBlue;
//   AppBarType get buttonStyle => getEnhanceUIStatus() ? AppBarType.dark : AppBarType.light;

//   TextStyle inputStyle(BuildContext context) {
//     return Theme.of(context).textTheme.bodyLarge?.copyWith(color: text1) ?? TextStyle(color: text1);
//   }

//   LinearGradient get appBarGradient => LinearGradient(
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//         colors: isDark
//             ? [
//                 const Color(0xBF01145B),
//                 const Color(0xBF011149),
//               ]
//             : [
//                 const Color(0xBFFFFFFF),
//                 const Color(0xBFFFFFFF),
//               ],
//       );
//   LinearGradient get appBarExploreGradient => LinearGradient(
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//         colors: isDark
//             ? [const Color(0XBF292E38), const Color(0XBF13161F)]
//             : [const Color(0XBFFFFFFF), const Color(0XBFFFFFFF)],
//       );

//   BoxDecoration? get dashboardDarkGradientBg => getEnhanceUIStatus()
//       ? const BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.fitWidth,
//             image: AssetImage(CoreAssetPaths.blueRadialGradientBg),
//           ),
//         )
//       : null;

//   BoxDecoration? get dashboardGradient => BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: getEnhanceUIStatus()
//               ? [
//                   const Color(0XFF000967),
//                   const Color(0XFF000000),
//                   const Color(0XFF000000),
//                 ]
//               : [
//                   const Color(0XFF11186F),
//                   const Color(0XFF0715A9),
//                   const Color(0XFFF7F7F7),
//                 ],
//           stops: const [0.24, 0.5, 1],
//         ),
//       );

//   IndicatorEffect get indicatorEffect => ExpandingDotsEffect(
//         dotHeight: 8,
//         dotWidth: 8,
//         expansionFactor: 2,
//         spacing: 8,
//         radius: 8,
//         dotColor: isDark ? CoreColors.white12 : CoreColors.toryBlue20,
//         activeDotColor: isDark ? CoreColors.white : CoreColors.toryBlue,
//       );

//   ShapeDecoration get schemeDetailDecoration => CoreBoxDecoration.getSmoothBoxDecoration(
//         borderRadius: 16,
//         color: CoreDesignSystem.instance.surface,
//         side: const BorderSide(color: CoreColors.greenWhiteAlt),
//       );
// }