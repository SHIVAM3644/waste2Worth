import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common_componets/common_decoration.dart';

class CoreProcessGuideList extends StatefulWidget {
  const CoreProcessGuideList({super.key});

  @override
  State<CoreProcessGuideList> createState() => _CoreProcessGuideListState();
}

class _CoreProcessGuideListState extends State<CoreProcessGuideList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.background,
      body: CustomScrollView(
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
            itemCount: 10,
            itemBuilder: (context, index) {
              return _buildWasteManagementListContainer();
            },
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 101)),
        ],
      ),
    );
  }

  Widget _buildWasteManagementListContainer() {
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
                        "Plastic",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: CoreColors.textColor,
                        ),
                      ),
                    ),
                    Text(
                      "Bird Feeder",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: CoreColors.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " A bird feeder madd up of plastic having nsdfjfr cdhbwf wjbfr  fwubfrjdwfbuer bfwfrb ",
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
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(11),
                    child: Image.network(
                      "https://media.gettyimages.com/id/1487330151/photo/great-tit-birds-on-garden-feeder.jpg?s=612x612&w=gi&k=20&c=FjsyiAi8QLhWXJqT7yg7FBzPjmMoGbIdUvdAjle-lHs=",
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                  ),
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
                  "Easy",

                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: CoreColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(Icons.alarm, color: Colors.grey, size: 17),
              const SizedBox(width: 4),
              Text(
                "15-20 min",

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
