import 'package:flutter/material.dart';
import 'package:waste2worth/common/core_assets_path.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common_componets/common_decoration.dart'
    show CoreBoxDecoration;

class CoreDesignSystem {
  CoreDesignSystem._();
  static final CoreDesignSystem instance = CoreDesignSystem._();
  bool getEnhanceUIStatus() {
    return false;
  }

  bool get isDark => getEnhanceUIStatus();

  Color get background =>
      getEnhanceUIStatus() ? Colors.black : CoreColors.desertStormAlt1;
  Color get inverseBackground =>
      getEnhanceUIStatus() ? CoreColors.desertStormAlt1 : Colors.black;

  Color get surface => getEnhanceUIStatus() ? Colors.white12 : Colors.white;
  Color get surfaceOnSurface =>
      getEnhanceUIStatus() ? CoreColors.thunder : CoreColors.whiteSmoke;

  Color get inverseSurface =>
      getEnhanceUIStatus() == false ? Colors.white12 : Colors.white;

  Color get text1 => getEnhanceUIStatus() ? Colors.white : Colors.black;
  Color get text2 =>
      getEnhanceUIStatus() ? CoreColors.white50 : CoreColors.cadetGrey;
  Color get text3 =>
      getEnhanceUIStatus() ? CoreColors.white50 : CoreColors.concord;

  Color get inverseText1 => getEnhanceUIStatus() ? Colors.black : Colors.white;
  Color get inverseText2 =>
      getEnhanceUIStatus() ? CoreColors.cadetGrey : CoreColors.white50;

  Color get success =>
      getEnhanceUIStatus() ? CoreColors.vibrantGreen : CoreColors.shareGreen;
  Color get failed => CoreColors.redPink;

  TextStyle inputStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(color: text1) ??
        TextStyle(color: text1);
  }

  Color get appBarColor =>
      getEnhanceUIStatus() ? Color(0xBF20CC01) : const Color(0xBF008000);

  LinearGradient get appBarGradient => LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: isDark
        ? [const Color(0xBF01145B), const Color(0xBF011149)]
        : [const Color(0xBFFFFFFF), const Color(0xBFFFFFFF)],
  );
  LinearGradient get appBarExploreGradient => LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: isDark
        ? [const Color(0XBF292E38), const Color(0XBF13161F)]
        : [const Color(0XBFFFFFFF), const Color(0XBFFFFFFF)],
  );

  BoxDecoration? get dashboardDarkGradientBg => getEnhanceUIStatus()
      ? const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(CoreAssetPaths.blueRadialGradientBg),
          ),
        )
      : null;

  BoxDecoration? get dashboardGradient => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: getEnhanceUIStatus()
          ? [
              const Color(0XFF000967),
              const Color(0XFF000000),
              const Color(0XFF000000),
            ]
          : [
              const Color(0XFF11186F),
              const Color(0XFF0715A9),
              const Color(0XFFF7F7F7),
            ],
      stops: const [0.24, 0.5, 1],
    ),
  );

  ShapeDecoration get schemeDetailDecoration =>
      CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        color: CoreDesignSystem.instance.surface,
        side: const BorderSide(color: CoreColors.greenWhiteAlt),
      );
}
