import 'package:flutter/material.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common_componets/app_bar.dart';
import 'package:waste2worth/common_componets/common_decoration.dart';
import 'package:waste2worth/common_componets/core_blur_container.dart';
import 'package:waste2worth/common_componets/core_cashed_image.dart';
import 'package:waste2worth/common_componets/shoemore.dart';
import 'package:waste2worth/core_process_guide/Model/ProcessGuideModel.dart';

class CoreProcessDetailPage extends StatelessWidget {
  const CoreProcessDetailPage({super.key, this.item});
  final ProcessGuideModel? item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.backgroundColor,
      body: CustomScrollView(
        slivers: [
          CoreBlurSliverAppBar(
            title: item?.title ?? "-",
            backgroundColor: const Color(0xBFFFFFFF),
          ),

          SliverToBoxAdapter(
            child: _buildHeaderTitle(
              context,
              logo: item?.logoUrl ?? "-",

              title: item?.completeDescription ?? "-",
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 4),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Steps to Create",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: CoreColors.text1color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildStepsContainer(context, steps: item?.steps ?? []),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderTitle(
    BuildContext context, {
    required String logo,
    required String title,
  }) {
    return Column(
      children: [
        CoreCachedImageContainer(
          height: 180,
          width: MediaQuery.of(context).size.width * 0.95,
          fit: BoxFit.fill,

          url: item?.logoUrl ?? "-",
          containerPadding: const EdgeInsets.all(0),
          decoration: CoreBoxDecoration.getSmoothBoxDecoration(
            borderRadius: 16,
            color: Colors.white,
            shadows: [
              BoxShadow(
                color: CoreColors.grey.withValues(alpha: 0.2),
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          placeHolder: buildPlaceholder(
            name: item?.title ?? "-",
            context: context,
            color: CoreColors.text1color,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: ShowMoreText(
            text: title,
            trimLength: 121,
            buttonColor: CoreColors.toryBlue,
            textColor: CoreColors.text2Color,
          ),
        ),
      ],
    );
  }

  Widget _buildStepsContainer(
    BuildContext context, {
    required List<String> steps,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: CoreBoxDecoration.getBoxDecoration(
        borderRadius: 16,
        color: CoreColors.surfacecolor,
        border: Border.all(color: CoreColors.toryBlue20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(steps.length, (index) {
          final stepsData = steps[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 17,
                  width: 17,
                  margin: EdgeInsets.only(top: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    color: CoreColors.shareGreen,
                  ),
                  child: Center(
                    child: Text(
                      "${index + 1}",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: CoreColors.surfacecolor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    stepsData,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: CoreColors.text1color,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
