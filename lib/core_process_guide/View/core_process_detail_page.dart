import 'package:flutter/material.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common/core_design_system.dart';
import 'package:waste2worth/common/formattor.dart';
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
      backgroundColor: CoreDesignSystem.instance.background,
      body: CustomScrollView(
        slivers: [
          CoreBlurSliverAppBar(
            title: item?.title ?? "-",
            backgroundColor: CoreDesignSystem.instance.appBarColor,
          ),

          SliverToBoxAdapter(
            child: _buildHeaderTitle(
              context,
              logo: item?.logoUrl ?? "-",

              title: item?.completeDescription ?? "-",
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 10),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Required Material",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: CoreDesignSystem.instance.text1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildRequiredMaterial(context, item?.requiredMaterials),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Steps to Create",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: CoreDesignSystem.instance.text1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildStepsContainer(context, steps: item?.steps ?? []),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Enviromental Impact",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: CoreDesignSystem.instance.text1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildEnviromentalImpact(
              context,
              item: item?.environmentalImpact,
            ),
          ),

          SliverToBoxAdapter(
            child: _buildCostSaving(context, item: item?.costSaving),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 90)),
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
        SizedBox(height: 20),
        CoreCachedImageContainer(
          height: 180,
          width: MediaQuery.of(context).size.width * 0.95,
          fit: BoxFit.fill,

          url: item?.logoUrl ?? "-",
          containerPadding: const EdgeInsets.all(0),
          decoration: CoreBoxDecoration.getSmoothBoxDecoration(
            borderRadius: 16,
            color: CoreDesignSystem.instance.surface,
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
            color: CoreDesignSystem.instance.text1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: ShowMoreText(
            text: title,
            trimLength: 121,
            buttonColor: CoreDesignSystem.instance.isDark
                ? Colors.white
                : CoreColors.toryBlue,
            textColor: CoreDesignSystem.instance.text2,
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
      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        color: CoreDesignSystem.instance.surface,
        side: BorderSide(
          color: CoreDesignSystem.instance.isDark
              ? Colors.white38
              : CoreColors.toryBlue20,
        ),
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

                    color: CoreDesignSystem.instance.success,
                  ),
                  child: Center(
                    child: Text(
                      "${index + 1}",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
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
                      color: CoreDesignSystem.instance.text1,
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

  Widget _buildRequiredMaterial(
    BuildContext context,
    List<String>? reqMaterial,
  ) {
    List<Color> reqColor = [
      CoreDesignSystem.instance.isDark ? Colors.lightBlue : CoreColors.toryBlue,
      CoreDesignSystem.instance.success,
      CoreDesignSystem.instance.isDark
          ? Colors.orange.shade600
          : Colors.orangeAccent,
      CoreDesignSystem.instance.failed,
      CoreDesignSystem.instance.isDark
          ? Colors.deepPurple
          : Colors.deepPurple.shade500,
    ];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        color: CoreDesignSystem.instance.surface,
        side: BorderSide(
          color: CoreDesignSystem.instance.isDark
              ? Colors.white38
              : CoreColors.toryBlue20,
        ),
      ),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(reqMaterial?.length ?? 0, (index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),

            decoration: CoreBoxDecoration.getSmoothBoxDecoration(
              borderRadius: 17,

              color: reqColor[index % reqColor.length],
            ),
            child: Text(
              reqMaterial?[index] ?? "-",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildEnviromentalImpact(
    BuildContext context, {
    required List<String>? item,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        color: CoreDesignSystem.instance.surface,
        side: BorderSide(
          color: CoreDesignSystem.instance.isDark
              ? Colors.white38
              : CoreColors.toryBlue20,
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(item?.length ?? 0, (index) {
          final itemData = item?[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.circle,
                    size: 11,
                    color: CoreDesignSystem.instance.success,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    itemData ?? "-",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: CoreDesignSystem.instance.text1,
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

  Widget _buildCostSaving(
    BuildContext context, {
    required List<CostSaving>? item,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),

      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        color: CoreDesignSystem.instance.surface,
        side: BorderSide(
          color: CoreDesignSystem.instance.isDark
              ? Colors.white38
              : CoreColors.toryBlue20,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cost Saving",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: CoreDesignSystem.instance.text1,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: CoreBoxDecoration.getSmoothBoxDecoration(
                    borderRadius: 16,
                    color: CoreDesignSystem.instance.surfaceOnSurface,
                    side: BorderSide(
                      color: CoreDesignSystem.instance.isDark
                          ? Colors.white
                          : CoreColors.toryBlue,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Yearly Saving",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: CoreDesignSystem.instance.text1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        format2INR(item?[0].moneySavedPerYear),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: CoreDesignSystem.instance.success,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: CoreBoxDecoration.getSmoothBoxDecoration(
                    borderRadius: 16,
                    color: CoreDesignSystem.instance.surfaceOnSurface,
                    side: BorderSide(
                      color: CoreDesignSystem.instance.isDark
                          ? Colors.white
                          : CoreColors.toryBlue,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Plastic Saved (kg)",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: CoreDesignSystem.instance.text1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${item?[0].plasticSavedIf1000People ?? "-"} kg/1000 user",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: CoreDesignSystem.instance.success,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
