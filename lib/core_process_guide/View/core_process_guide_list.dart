import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common_componets/common_decoration.dart';
import 'package:waste2worth/common_componets/core_blur_container.dart';
import 'package:waste2worth/common_componets/core_cashed_image.dart';
import 'package:waste2worth/core_process_guide/Controller/process_guide_controller.dart';
import 'package:waste2worth/core_process_guide/Model/ProcessGuideModel.dart';
import 'package:waste2worth/core_process_guide/View/core_process_detail_page.dart';

final _processGuideController = Get.put(ProcessGuideController());

class CoreProcessGuideList extends StatefulWidget {
  const CoreProcessGuideList({super.key});

  @override
  State<CoreProcessGuideList> createState() => _CoreProcessGuideListState();
}

class _CoreProcessGuideListState extends State<CoreProcessGuideList> {
  @override
  void initState() {
    _processGuideController.fetchProcessGuides();
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<ProcessGuideController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.background,
      extendBodyBehindAppBar: true,
      body: _processGuideController.obx((state) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 150,
              toolbarHeight: 61,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  final collapsedHeight =
                      kToolbarHeight + MediaQuery.of(context).padding.top;
                  final isCollapsed =
                      constraints.biggest.height <= collapsedHeight + 10;

                  return ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                    child: CoreBlurContainer(
                      color: Color(0xBF008000),
                      blur: 13,
                      child: FlexibleSpaceBar(
                        collapseMode: CollapseMode.parallax,
                        centerTitle: true,
                        title: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: isCollapsed ? 1 : 0,
                          child: Text(
                            "Waste2Worth",
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(
                                  color: CoreColors.textWhiteground,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        background: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Welcome!",
                                style: Theme.of(context).textTheme.headlineLarge
                                    ?.copyWith(
                                      color: CoreColors.textWhiteground,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                "Turn your waste into value",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(
                                      color: CoreColors.textWhiteground,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 31)),
            SliverList.builder(
              itemCount: state?.length,
              itemBuilder: (context, index) {
                return _buildWasteManagementListContainer(state?[index]);
              },
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 101)),
          ],
        );
      }),
    );
  }

  Widget _buildWasteManagementListContainer(ProcessGuideModel? item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CoreProcessDetailPage(item: item,)),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),

        decoration: CoreBoxDecoration.getBoxDecoration(
          borderRadius: 16,
          border: Border.all(color: CoreColors.toryBlue20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 11,
                        ),
                        margin: EdgeInsets.only(bottom: 4),
                        decoration: CoreBoxDecoration.getBoxDecoration(
                          borderRadius: 100,
                          color: CoreColors.lightGreen,
                        ),
                        child: Text(
                          item?.categoryType ?? "",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: CoreColors.textColor),
                        ),
                      ),
                      Text(
                        item?.title ?? "-",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: CoreColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        item?.completeDescription ?? "--",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: CoreColors.textColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 11),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                CoreCachedImageContainer(
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,

                  url: item?.logoUrl ?? "-",
                  containerPadding: const EdgeInsets.all(0),
                  decoration: CoreBoxDecoration.getSmoothBoxDecoration(
                    borderRadius: 12,
                    color: CoreColors.backgroundColor,
                  ),
                  placeHolder: buildPlaceholder(
                    name: item?.title ?? "-",
                    context: context,
                    color: CoreColors.text1color,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.green, size: 20),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    item?.difficultyLevel ?? "-",

                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: CoreColors.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(Icons.alarm, color: Colors.grey, size: 17),
                const SizedBox(width: 4),
                Text(
                  item?.estimatedTime ?? "",

                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: CoreColors.borderColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
