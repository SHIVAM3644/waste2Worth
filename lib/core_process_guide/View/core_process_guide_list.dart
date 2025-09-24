import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common_componets/common_decoration.dart';
import 'package:waste2worth/core_process_guide/Controller/process_guide_controller.dart';
import 'package:waste2worth/core_process_guide/Model/ProcessGuideModel.dart';

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
                    child: Container(
                      decoration: CommonDecoration.coreBoxDecoration(
                        radius: 0,
                        color: CoreColors.green,
                      ),
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
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: CommonDecoration.coreBoxDecoration(
        radius: 16,
        border: Border.all(color: CoreColors.borderColor),
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
                      decoration: CommonDecoration.coreBoxDecoration(
                        radius: 100,
                        color: CoreColors.lightGreen,
                      ),
                      child: Text(
                        item?.categoryType ?? "",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: CoreColors.textColor,
                        ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  if(item?.logoUrl=="")...[
                    ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(11),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU__e8meBPfg_ZA1SfVBSOL5g_hC0OlFp7lQ&s",
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                  )
                  ]
                  else...[ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(11),
                    child: Image.network(
                      item?.logoUrl ?? "",
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                  )]
                  
                ],
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
    );
  }
}
