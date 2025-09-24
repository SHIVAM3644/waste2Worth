import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:waste2worth/common/core_colors.dart';
import 'package:waste2worth/common/core_key_value_model';
import 'package:waste2worth/common_componets/common_decoration.dart';
import 'package:waste2worth/common_componets/core_blur_container.dart';
import 'package:waste2worth/common_componets/core_cashed_image.dart';

class CoreScrapeListView extends StatefulWidget {
  const CoreScrapeListView({super.key});

  @override
  State<CoreScrapeListView> createState() => _CoreScrapeListViewState();
}

class _CoreScrapeListViewState extends State<CoreScrapeListView> {
  Future<void> launchUri(Uri uri) async {
    final snackBar = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message: 'An Error Occured!',

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: ContentType.failure,
      ),
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      Future.delayed(
        Duration.zero,
        () => ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.backgroundColor,
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          PinnedHeaderSliver(
            child: CoreBlurContainer(
              color: Color(0XBFFFFFFF),
              child: Text(
                "Scrap Center Detail",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(color: Colors.black),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            sliver: SliverToBoxAdapter(child: _buildHeader()),
          ),
          SliverToBoxAdapter(
            child: _buildBasicContainer(
              title: "Waste Management",
              titleValue: [
                CoreKeyValuePairModel(key: "Specialized Waste", value: "E1212"),
                CoreKeyValuePairModel(
                  key: "Capacity",
                  value: "EcoScrap Solution",
                ),
                CoreKeyValuePairModel(
                  key: "Processing Methods",
                  value: "29/07/2004",
                ),
                CoreKeyValuePairModel(key: "Certifications", value: "Patna"),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: _buildContactContainer("7324866094", "shivam123@gmiail.com"),
          ),
          SliverToBoxAdapter(
            child: _buildBasicContainer(
              title: "Basic Info",
              titleValue: [
                CoreKeyValuePairModel(key: "Center Id", value: "E1212"),
                CoreKeyValuePairModel(
                  key: "Organization Name",
                  value: "EcoScrap Solution",
                ),
                CoreKeyValuePairModel(
                  key: "Date Established",
                  value: "29/07/2004",
                ),
                CoreKeyValuePairModel(key: "City", value: "Patna"),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: _buildBasicContainer(
              title: "Operation",
              titleValue: [
                CoreKeyValuePairModel(key: "Operating Hour", value: "E1212"),
                CoreKeyValuePairModel(
                  key: "Employee Count",
                  value: "EcoScrap Solution",
                ),
                CoreKeyValuePairModel(key: "Partnerships", value: "29/07/2004"),
                CoreKeyValuePairModel(
                  key: "sustainability\n initiatives ",
                  value: "Patna",
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: _buildReviewContainer()),
          SliverToBoxAdapter(child: _buildMapGenerator()),
          const SliverToBoxAdapter(child: SizedBox(height: 51)),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        CoreCachedImageContainer(
          width: 121,
          height: 121,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          url: "u",
          containerPadding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          placeHolder: buildPlaceholder(
            name: "hii",
            context: context,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          "Scrape Center".toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "Municipal Corporation ".toUpperCase(),
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: 3,
          ),
        ),
      ],
    );
  }

  Widget _buildBasicContainer({
    required String title,
    required List<CoreKeyValuePairModel<String, String, dynamic>> titleValue,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        side: const BorderSide(color: CoreColors.toryBlue20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          const Divider(color: CoreColors.toryBlue20),
          // verticallyTitleValue(context,
          //     titleValue: titleValue, titleValuePadding: const EdgeInsets.symmetric(vertical: 8))
        ],
      ),
    );
  }

  Widget _buildReviewContainer() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        side: const BorderSide(color: CoreColors.toryBlue20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reviews",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          const Divider(color: CoreColors.toryBlue20),
          ...[
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "4",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: CoreColors.text1color,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  _buildStartGeneration("4"),
                  Text(
                    "120 reviews",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: CoreColors.text2Color,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
          const SizedBox(height: 12),
          Text(
            "Last Updated : 2 weeks ago",
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: CoreColors.cadmiumRed),
          ),
        ],
      ),
    );
  }

  Widget _buildStartGeneration(String? value) {
    final rating = int.tryParse(value ?? '');

    if (rating == null) {
      return Text(
        '-',
        style: TextStyle(
          color: CoreColors.text1color,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate((rating), (index) {
          return const Icon(
            Icons.star_rounded,
            color: CoreColors.shareGreen,
            size: 21,
          );
        }),
        ...List.generate((5 - rating), (index) {
          return const Icon(
            Icons.star_purple500_rounded,
            color: CoreColors.shareGreen,
            size: 21,
          );
        }),
      ],
    );
  }

  Widget _buildMapGenerator() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        side: const BorderSide(color: CoreColors.toryBlue20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Locations",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: CoreColors.text1color,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 7),
          SizedBox(height: 151, width: MediaQuery.of(context).size.width),
          SizedBox(
            height: 44,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                // if (amc?.address != null && amc!.address!.isNotEmpty) {
                final query = Uri.encodeComponent(
                  "Patliputra Infra Ltd,Patliputra Colony, Patna - 800013",
                );
                final uri = Uri.parse(
                  "https://www.google.com/maps/search/?api=1&query=$query",
                );
                launchUri(uri);
                // }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: CoreColors.whiteSmoke,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Text(
                "Get Direction",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: CoreColors.shareGreen,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactContainer(String officeNo, String email) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: CoreBoxDecoration.getSmoothBoxDecoration(
        borderRadius: 16,
        side: const BorderSide(color: CoreColors.toryBlue20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Information",
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: CoreColors.text1color,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          const Divider(color: CoreColors.toryBlue20),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.phone_in_talk_rounded,
                size: 21,
                color: CoreColors.shareGreen,
              ),
              const SizedBox(width: 11),
              Expanded(
                child: Text(
                  "phone",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 13,
                    color: CoreColors.text2Color,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (officeNo.isNotEmpty && officeNo != "-") {
                    final Uri uri = Uri(scheme: 'tel', path: officeNo);
                    launchUri(uri);
                  }
                },
                child: Text(
                  officeNo,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 15,
                    color: CoreColors.shareGreen,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(color: CoreColors.toryBlue20),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.email_outlined,
                size: 21,
                color: CoreColors.shareGreen,
              ),
              const SizedBox(width: 11),
              Expanded(
                child: Text(
                  "Email",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 13,
                    color: CoreColors.text2Color,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (email.isNotEmpty && email != "-") {
                    final Uri uri = Uri(scheme: 'mailto', path: email);
                    launchUri(uri);
                  }
                },
                child: Text(
                  email,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 15,
                    color: CoreColors.shareGreen,
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
//email onTap: () {
//             if (amc?.email != null && amc!.email!.isNotEmpty) {
//               final Uri uri = Uri(
//                 scheme: 'mailto',
//                 path: amc.email!,
//               );
//               launchUri(uri);
//             }
//           },

//office number
// onTap: () {
// if (amc?.officeNo != null && amc!.officeNo!.isNotEmpty) {
// final Uri uri = Uri(
// scheme: 'tel',
// path: amc.officeNo!,
// );
// launchUri(uri);
// }
// },

//website
// onTap: () {
// if (amc?.website != null && amc!.website!.isNotEmpty) {
// launchUri(Uri.parse(amc.website!));
// }
// },

//map
// onTap: () {
// if (amc?.address != null && amc!.address!.isNotEmpty) {
// final query = Uri.encodeComponent(amc.address!);
// final uri = Uri.parse("https://www.google.com/maps/search/?api=1&query=$query");
// launchUri(uri);
// }
// },
