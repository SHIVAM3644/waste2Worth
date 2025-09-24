// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:waste2worth/common/core_colors.dart';



// class CoreCachedImageContainer extends StatefulWidget {
//   final String? url;
//   final double? height;
//   final double? width;
//   final EdgeInsets? containerPadding;
//   final Widget placeHolder;
//   final Widget? errorWidget;
//   final Decoration? decoration;
//   final Alignment alignment;
//   final BoxFit fit;
//   final ColorFilter? colorFilter;

//   const CoreCachedImageContainer({
//     super.key,
//     required this.url,
//     this.height = 54,
//     this.width = 54,
//     this.containerPadding,
//     required this.placeHolder,
//     this.decoration,
//     this.fit = BoxFit.fill,
//     this.errorWidget,
//     this.alignment = Alignment.center,
//     this.colorFilter,
//   });

//   @override
//   State<CoreCachedImageContainer> createState() => _CoreCachedImageContainerState();
// }

// class _CoreCachedImageContainerState extends State<CoreCachedImageContainer> {
//   Future<File>? _svgFuture;

//   bool get _isSvg => widget.url != null && widget.url!.toLowerCase().endsWith('.svg');

//   @override
//   void initState() {
//     super.initState();
//     if (_isSvg) {
//       _svgFuture = _getSvgFile(widget.url!);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       clipBehavior: Clip.hardEdge,
//       padding: widget.containerPadding,
//       height: widget.height,
//       width: widget.width,
//       decoration: widget.decoration ??
//           CoreBoxDecoration.getBoxDecoration(
//             removeShadow: true,
//             color: Colors.white,
//           ),
//       child: widget.url != null && widget.url!.isNotEmpty
//           ? _isSvg
//               ? FutureBuilder<File>(
//                   future: _svgFuture,
//                   builder: (context, snapshot) {
//                     Widget child;
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       child = widget.placeHolder;
//                     } else if (snapshot.hasError || !snapshot.hasData) {
//                       child = widget.errorWidget ?? widget.placeHolder;
//                     } else {
//                       child = SvgPicture.file(
//                         snapshot.data!,
//                         fit: widget.fit,
//                         alignment: widget.alignment,
//                         height: widget.height,
//                         width: widget.width,
//                         colorFilter: widget.colorFilter,
//                       );
//                     }

//                     return AnimatedSwitcher(
//                       duration: const Duration(milliseconds: 500),
//                       switchInCurve: Curves.easeIn,
//                       switchOutCurve: Curves.easeInOut,
//                       child: child,
//                     );
//                   },
//                 )
//               : CachedNetworkImage(
//                   fadeInDuration: const Duration(milliseconds: 100),
//                   imageUrl: widget.url!,
//                   fit: widget.fit,
//                   alignment: widget.alignment,
//                   placeholder: (context, _) => widget.placeHolder,
//                   errorWidget: (context, _, __) => widget.errorWidget ?? widget.placeHolder,
//                 )
//           : widget.placeHolder,
//     );
//   }

//   Future<File> _getSvgFile(String url) async {
//     final cacheManager = DefaultCacheManager();

//     final cachedFile = await cacheManager.getFileFromCache(url);
//     if (cachedFile != null && cachedFile.file.existsSync()) {
//       return cachedFile.file;
//     }

//     return await cacheManager.getSingleFile(url);
//   }
// }

// Widget buildPlaceholder({
//   required String? name,
//   required BuildContext context,
//   TextStyle? style,
//   Color color = CoreColors.toryBlue,
// }) {
//   final initial = name?.isNotEmpty == true ? name![0] : '';
//   return Center(
//     child: Text(
//       initial,
//       style: style ?? Theme.of(context).textTheme.titleMedium?.copyWith(color: color),
//     ),
//   );
// }

// Widget buildPlaceholderAsset({
//   required String assetPath,
//   BoxFit fit = BoxFit.fill,
// }) {
//   return Image.asset(
//     fit: fit,
//     assetPath,
//   );
// }

// Widget buildPlaceholderSVG({required String assetPath, double? height, double? width}) {
//   return SvgPicture.asset(
//     fit: BoxFit.fill,
//     assetPath,
//     height: height,
//     width: width,
//   );
// }

// Widget buildPlaceholderIcon({required IconData icon}) {
//   return Center(
//     child: Icon(
//       icon,
//       size: 30,
//     ),
//   );
// }